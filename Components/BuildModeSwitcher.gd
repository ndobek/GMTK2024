extends Node2D

@export var BuildModeOnly: bool

# Called when the node enters the scene tree for the first time.
func _ready():
	if (get_tree().current_scene.name == "Build") == BuildModeOnly:
		get_parent().show()
	else:
		get_parent().hide()
		
