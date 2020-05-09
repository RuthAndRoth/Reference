// deliver_inventory.lsl - Deliver object contents to inventory
// SPDX-License-Identifier: MIT

// Object contents are delivered to a user's inventory either on
// a click (touch) or optionally when attached.

// Hover text is set to the object name automatically when the script
// is reset or the object contents are changed.

// v1 08May2020 - Distillation of a couple of similar scripts

// Set to TRUE to deliver contents when attached
integer DELIVER_ON_ATTACH = FALSE;

// Prepend something to the delivered folder name
// (include a space here if needed)
string PREFIX = "";

// Set the color of the hover text
vector COLOR = <1.0, 1.0, 1.0>;

// Max memory (bytes)
integer mem_limit = 32768;

string obj_name;

// Do object inventory delivery to avatar inventory
deliver_inventory(key user) {
    list items;
    string name;
    integer i = 0;

    integer total = llGetInventoryNumber(INVENTORY_ALL);
    for (; i < total; ++i) {
        name = llGetInventoryName(INVENTORY_ALL, i);
        if (llGetInventoryPermMask(name, MASK_OWNER) & PERM_COPY) {
            items += name;
        } else {
            llOwnerSay("Unable to copy " + name);
        }
    }

    // Remove this script from the list
    i = llListFindList(items, [llGetScriptName()]);
    items = llDeleteSubList(items, i, i);

    if (llGetListLength(items) < 1) {
        llSay(0, "No items available");
    } else {
        llGiveInventoryList(user, obj_name, items);
        name = "Items delivered to an inventory folder called '"+ obj_name +"'";
        if (user == llGetOwner())
            llOwnerSay(name);
        else
            llInstantMessage(user, name);
    }
    llSetText(llGetObjectName(), COLOR, 1);
    // llOwnerSay("Free: " + (string)llGetFreeMemory());
}

default {
    state_entry() {
        llSetMemoryLimit(mem_limit);
        obj_name = PREFIX + llGetObjectName();
        llSetText(obj_name, COLOR, 1.0);
    }

    touch_start(integer total_number) {
        deliver_inventory(llDetectedKey(0));
    }

    attach(key id) {
        if (id != NULL_KEY) {
            // attach
            if (DELIVER_ON_ATTACH) {
                deliver_inventory(id);
            }
        }
    }

    changed(integer change) {
        if (change & (CHANGED_OWNER | CHANGED_INVENTORY)) {
            llResetScript();
        }
    }
}
