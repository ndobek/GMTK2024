extends Node2D

@export var spring : DampedSpringJoint2D
var open :bool

# Called when the node enters the scene tree for the first time.
func _ready():

	pass


func Open():
	spring.rest_length = 500
	open = true
	print(spring.rest_length)
	
func Close():
	spring.rest_length = 0
	open = false
	print(spring.rest_length)


func Toggle():
	if open: Close()
	else: Open()




func ToggleEvent(viewport: Node, event: InputEvent, shape_idx: int):
	if event.is_action_pressed("Activate"): 
		Toggle()
		viewport.set_input_as_handled()
