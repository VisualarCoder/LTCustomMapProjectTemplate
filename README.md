# LTCustomMapProjectTemplate
The Latest taggers custom map project template (LTCMPT) is a tool for you to make maps for Latest Taggers. You will need unity, and the unity version ("2022.3.2f1") to use this tool.

# Making your first map!
Well for first, You need to either build your map inside unity or inside blender or any other modeling programs.
After that make sure to import it and put it inside the Game Object "Map Parent", if you delete the Game Object "Map Parent" it will break your whole map so do not delete it!
When your map is inside the Game Object "Map Parent" you can configure it in any way you want! by using some of the base template materials, models and textures you can shape your map how you want it to be!
Also make sure to configure the spawn point gameobjects position inside the inspector to make sure the player spawns at the right position! this is the same with the terminal spawn position :D.

# Exporting your first map!
Once you have finished configuring and making your map, drag the Map Parent gameobject inside the Assets folder at the bottom of your screen (or wherever you have it docked).
After that click your map prefab and look at the bottom of your prefabs inspector. You should see a label that says Asset Labels, click on it to view the Asset Bundles Screen.
You should see Asset Bundles then a dropdown next to it on the right that says none. Click the dropdown then click new, Type whatever you want your custom map to be named then after naming it click your Custom Map name in the dropdown to select it.
After all that make sure you have done all the steps correctly and look at the top of the LTHelp window and click Export Map! then you have completed your first map.
Once all that is done select the file that is called what you selected your custom map name to be, that is your custom map file you can delete all the other files. Once this is done you can send it inside the #custom-maps channel and provide a map name, map description and map screenshot!

# Making your first interactable!
Soo your wondering how to make your own interactable? so first import your object / model you want to become a interactable.
Next select your interactable in the Hierarchy and look under the objects name and click the dropdown next to where it says tag. Once you have clicked it select the tag that says LTInteractable!
Next once you have setup the tag onto your interactable, if your object hasn't already got a collider add one by clicking add component in the inspector while selecting your object and typing collider. If its a custom model add a mesh collider, otherwise add the collider that fits your interactable.
After adding your collider if your using a mesh collider, find the component and make sure convex and is trigger is toggled to true. If your using a box collider, sphere collider, etc. Just tick the is trigger option!
Once you have followed all those steps your interactable should be set up! Latest Taggers will handle all the rest of the interactable code :D

# Making your first climbable object!
Well, for first you need to either create a cube or whatever you want to be climbable!
Next select your climbable in the Hierarchy and look under the objects name and click the dropdown next to where it says tag. Once you have clicked it select the tag that says LTClimbable!
Next once you have setup the tag onto your climbable, if your object hasn't already got a collider add one by clicking add component in the inspector while selecting your object and typing collider. If its a custom model add a mesh collider, otherwise add the collider that fits your climbable.
After adding your collider if your using a mesh collider, find the component and make sure convex and is trigger is toggled to true. If your using a box collider, sphere collider, etc. Just tick the is trigger option!
Once you have followed all those steps your climbable should be set up! Latest Taggers will handle all the rest of the climbable code :D
