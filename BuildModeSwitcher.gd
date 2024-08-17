extends Node2D

@export var BuildModeObj: Node2D
@export var ScaleModeObj: Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if get_tree().current_scene.name == "Build":
		BuildModeObj.show()
		ScaleModeObj.hide()
	else:
		BuildModeObj.hide()
		ScaleModeObj.show()
		
