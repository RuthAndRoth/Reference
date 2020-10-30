After using this armature, to export from Blender, make sure your armature and all its meshes are oriented to face +Y. Apply all transformations in Object mode. Check it a couple of times - parented objects sometimes follot the Object > Apply and sometimes don't, and I haven't figured out the right workflow.

Then put the armature into edit mode, select all, clear bone roll.

Make sure your mesh is clean. Problems here can cause viewer import failures. There may be more that's needed on this list; these are the ones I know about:  
In the properties editor, 
Object properties:
Relations: make sure your mesh is parented to the right armature
Delete Custom Properties, if any (if your mesh came from other software or used plugins, there might be junk there)

Modifiers
Make sure there is only one Armature modifier, and that it's pointing to the right armature

Object Data Properties
Delete unused vertex groups
Max deform bone vertex groups per mesh: 110
Geometry: Clear data - sculpt mask, custom split normals, etc.

Material properties:
Delete unused materials from each mesh
Rename materials: no spaces nor special characters. 
Make sure all verts in the mesh are assigned to a material
If you made LOD or physics versions, each one must have the same material as the high LOD or physics version. 
No more than 8 materials per mesh
No more than 21844 tris per material


Then Export - Collada, with the following selections in the export options (Gear icon):

Operator Preset: SL+Open Sim rigged 
and make sure these checkboxes are ticked:
Main tab
Selection Only
Include Armatures
Global Orientation Apply
Forward Axis Y
Up Axis Z
Texture options
Copy
UV, only selected

Geom tab
Triangulate 
Apply modifiers Viewport
Transform Matrix

Armature tab
Deform Bones Only
Export to SL/Open Sim

Anim tab
Include Animations (I don't know what this does)

Extras
Use Blender Profile
Sort by Object Name
If you edited the armature, for example for a tiny or non-human, then:
Keep Bind Info


Import:
Include skin weight

If your armature is resized (giants and tinies) or non-human: Include joint positions

