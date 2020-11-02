Please see Export_ImportRiggedMeshBlender.md for notes on using these armatures. 

### Armatures
 * avatar_skeleton.xml_armature.blend - Ada Radius' armature built from the data in avatar_skeleton.xml - use for tinies, giants, non-humans. avatar_skeleton.xml is the viewer file, Character folder, that defines the inworld armature. It has internal errors itself, and the Blender file armature has some compromises to adjust to them. Left-right asymetries and bone head to connected bone tail inconsistencies. 
 
 * avatar_skeleton.xml_fittedbones_armature.blend - The avatar_skeleton.xml.blend armature, with the addition of bone custom properties for the "fitted" or volume bones, values also taken from avatar_skeleton.xml, with python language from Blender dev blog. Use for mesh body or clothing attachments rigged to the "fitted" bones
 
* male_2016_08_05Rebuilt.blend - Armature built from the SLWiki Bento download, repaired with values from avatar_skeleton.xml: can be used for mesh sized to the default male. Though the first two armatures in this list may be more accurate and can be used for male or female. 

### Other Resources

SLAvatar.blend - replica of the inworld default avatar mesh, based on SLWiki downloads 

opensim_armatures.ods - Ada Radius' spreadshheet analysis of avatar_skeleton.xml, which is found in the viewer Character folder. Cross-referenced to SLWiki information (some of which is wrong), calculations converting the Maya values to Blender, and notes on exporting from Blender.

Last updated 2020-11-02 Ada Radius
