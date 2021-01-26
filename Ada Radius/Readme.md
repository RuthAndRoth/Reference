Please see Export_ImportRiggedMeshBlender.md for notes on using these armatures. 

### Armatures
 * avatar_skeleton.xml_armature.blend - armature built from the data in avatar_skeleton.xml - use for tinies, giants, non-humans. avatar_skeleton.xml is the viewer file, Character folder, that defines the inworld armature. It has internal errors itself, and the Blender file armature has some compromises to adjust to them. Left-right asymetries and bone head to connected bone tail inconsistencies. 

* avatar_skeletonV3.blend replaces avatar_skeleton_with_custombonesettings.blend, and has two armatures in the blend file: 
 
** avatar_skeleton.xml - The avatar_skeleton.xml armature, with the addition of bone custom properties for the "fitted" or volume bones, values taken from avatar_skeleton.xml, with python language from Blender dev blog. Can be used as-is for vertex weighting fitted or regular mesh, and exporting the dae file. 

**avatar_skeletonV3 - the above armature, rotated +X, bone names changed to conform to Blender naming rules, and the addition of a nondeform PelvisChild bone that will rotate so mPelvis weights can be tested. This armature is better for rigging, skinning and vertex painting in Blender, but can't be used for exporting the dae file. One workflow is to use this for vertex weighting, then unbind, rotate the mesh +y forward, apply rotation, and skin to avatar_skeleton.xml armature for exporting. 
 
* male_2016_08_05.daeRebuilt.blend - Armature built from the SLWiki Bento download, repaired with values from avatar_skeleton.xml, is an approximation of the male-sized armature inworld.  

### Other Resources

* SLAvatar.blend - replica of the inworld default avatar mesh, based on SLWiki downloads. 

* opensim_armatures.ods - spreadsheet analysis of avatar_skeleton.xml, which is found in the viewer Character folder. Cross-referenced to SLWiki information (some of which is wrong), calculations converting the Maya values to Blender, and notes on exporting from Blender.

* UVmaps - PNG images.

* SLAvatarUVMaps.psd - PhotoShop document of UV Maps.

Last updated 2021-01-26 Ada Radius
