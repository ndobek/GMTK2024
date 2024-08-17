extends Node2D

@export var spring : DampedSpringJoint2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Open()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func Open():
	spring.rest_length = 90
	pass

func Close():
	spring.rest_length = 0
	pass
