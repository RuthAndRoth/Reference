Please see Export_ImportRiggedMeshBlender.md for notes on using these armatures. 

### Armatures
 * avatar_skeleton.xml.blend: Ada Radius' armature built from the data in avatar_skeleton.xml - use for tinies, giants, non-humans 
 * avatar_skeleton_customproperties.blend: the armature above, with the addition of bone custom properties for the "fitted bones", values also taken from avatar_skeleton.xml, with python language from Blender dev blog. Use for mesh body or clothing attachments rigged to the "fitted" bones
* male_2016_08_05Rebuilt.blend  armature built from the SLWiki Bento download, repaired with values from avatar_skeleton.xml: can be used for mesh sized to the default male. (though the first two armatures on this list will also work fine for any sized mesh - the only differences are the bone zed values)

### Other Resources
SLAvatar.blend: replica of the inworld default avatar mesh 
opensim_armatures.ods spreadsheet: Ada Radius' analysis of avatar_skeleton.xml, which is found in the viewer Character folder. Cross-referenced to SLWiki information (some of which is wrong), calculations converting the Maya values to Blender, and notes on exporting from Blender.
