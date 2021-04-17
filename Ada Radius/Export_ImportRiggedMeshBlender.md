Exporting from Blender to import to OpenSim. This may work for Second Life as well but I haven't tested it.

While working in Blender, it's better to orient your armature and mesh to face front (+Y), while you are in Front Orthographic view. As Blender symmetry defaults along the X axis. If you don't know how to do that yet, search for and watch tutorials on applying rotations and other tranforms to objects, and the relationship between object and mesh. I won't list links here - Blender changes too fast. 

To export from Blender, however, make sure your armature and all its meshes are oriented to face +X - facing to your right in Front Orthographic view. Apply all transformations in Object mode. Check it a couple of times - parented objects follow the parent while rotating, but the rotation needs to be "applied" to the child objects (Object > Apply > All Transforms) as well as the parent armature. If you forget that and rotate a child object before rotating the parent, you may need to fix it. 

Then put the armature into edit mode, select all, set bone roll to Global Z axis.

Make sure your mesh is clean. Problems here can cause viewer import failures. These failures may be silent, or there may be an error message, which may or may not have anything to do with the actual error. 

There may be more items needed in these lists; these are the ones I know about as of Blender 2.92:  

### Properties Editor: 

Object Properties:
  * Relations: make sure your mesh is parented to the right armature
  * Delete Custom Properties, if any (if your mesh came from other software or used plugins, there might be junk there)

Modifier Properties:
  * Make sure there is only one Armature modifier, and that it's pointing to the right armature
  * Other modifiers may or may not work as they're applied on export

Object Data Properties:
  * Delete unused vertex groups
  * Max deform bone vertex groups per mesh: 110
  * Geometry: Clear data - sculpt mask, custom split normals, unless you know how you need them inworld. 

Material Properties:
  * Delete unused materials from each mesh
  * Rename materials: no spaces nor special characters. 
  * Make sure all verts in the mesh are assigned to a material
  * If you made LOD or physics versions, each one must have the same material as the high LOD or physics version. 
  * No more than 8 materials per mesh
  * No more than 21844 tris per material

Export > Collada, with the following selections in the export options (Gear icon):
  * Operator Preset: SL+Open Sim rigged 
  * and make sure the following checkboxes are ticked
  
Main tab:
  * Selection Only
  * Include Armatures
  * Global Orientation Apply
  * Forward Axis Y
  * Up Axis Z
  * Texture options
  * Copy
  * UV - Only Selected Map

Geom(etry) tab:
  * Triangulate 
  * Apply modifiers Viewport
  * Transform Matrix

Arm(ature) tab:
  * Deform Bones Only
  * Export to SL/Open Sim

Anim(imastion) tab:
  * Include Animations (I don't know what this does)

Extra tab:
  * Use Blender Profile
  * Sort by Object Name
  * If you edited the armature, for example for a tiny or non-human, OR are exporting mesh rigged to volume bones ('fitted' mesh) then check: Keep Bind Info

Export Collada to chosen .dae filename

Tested on Firestorm OS
    * If your armature is resized (giants, tinies, non-humans): Include joint positions.
    * If you don't want your mesh to use the Appearance sliders at all: Lock scale if joint position defined.

Last updated 2021-04-17 Ada Radius. 
