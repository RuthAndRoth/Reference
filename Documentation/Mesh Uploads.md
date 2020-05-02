# Mesh Uploads

This mesh upload process is used for all reference uploads of Ruth2 and
Roth2 in order to maintain a consistency across grids.

Firestorm 6 has a [new mesh uploader](https://beqsother.blogspot.com/2018/12/easing-pain-of-importing-mesh.html)
by Beq Janus that is a great improvement (so much that LL is porting it back
into their viewer) that we use for all uploads. The SL-specific build of
Firestorm should be used for SL uploads as it uses the Havoc physics engine
(licensed only for SL use) while the “OpenSimlulator” build must be used
for all other grids.

There is a nice overview of the Mesh Upload process in 
[this OpenSimulator wiki post](http://opensimulator.org/wiki/How_To_Upload_Mesh).

Another useful discussion of mesh uploads is
[Oz Wayfarer's post](https://www.kitely.com/forums/viewtopic.php?t=3199) to
the Kitely Building and Texturing forum. Specifically section 4 details the
differences between SL and OpenSim regarding physics. The additional detail
of rigged vs non-rigged mesh is not addressed but suffice it to say the OS
case seems compelling enough to require a simple physics model for our OpenSim
uploads, rigged or not.

## Upload Model

The process for uploading rigged mesh (avatars) starts in the
**Build → Uploads → Mesh Model** menu in Firestorm:

* **Model Name**: use DAE filename
* **This model represents…**”: If this is present next to the model name then you
  have an older viewer as it has been removed in recent Firestorm releases. It
  apparently was never used by the back-end and can be left unset on viewers
  that have it.
* **Level of Detail** tab
  * **Medium/Low/Lowest**: Due to how SL calculates LoD on rigged attachments
    the Low and Lowest settings are rarely if ever rendered by the viewer.
    We set them intentionally small to keep the reported complexity low.
    See the tables for each specific body for the actual values used.
    [This SL forum thread](https://community.secondlife.com/forums/topic/419469-rigged-mesh-lod-bug/?do=findComment&comment=1727840)
    has a recent-ish discussion around what is happening.
  * **Generate Normals**: do not check this box
* **Physics** tab
  * **Step 1**: Use file [PhysicsTriPlane.dae](https://github.com/RuthAndRoth/Reference/blob/master/Mesh/Physics%20Models/PhysicsTriPlane.dae)
    (From the [RuthAndRoth/Reference repo](https://github.com/seriesumei/Reference/tree/test)) for the physics model
  * **Step 2 and 3**: Do *NOT* use the Analyze and Simplify buttons for rigged mesh (citation?)
* **Upload Options** tab
  * **Scale**: leave scale at the default value 1.000
  * **Include textures**: do not check this box
  * **Include skin weight**: check this box
  * **Include joint positions**: do not check this box (citation?)

## Reference Box

After uploading:

* Set all mesh uploads to full permissions (leave no-transfer for pre-release mesh only)
* Attach to an appropriate place to set the default attach point:
  * body (full and torso+hands+feet): spine
  * head: chin (leave skull for attached hair)
  * hands: left upper arm
  * feet: left lower leg
  * eyes: left eyeball
