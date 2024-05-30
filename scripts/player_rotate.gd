extends SpringArm3D

@export var mouse_sensitivity = 0.5
@export var min_x_degrees = -45
@export var max_x_degrees = 30

@export var speed = 10.0

var velocity: Vector3 = Vector3.ZERO
var direction: Vector3 = Vector3.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _unhandled_input(event):
	if event is InputEventMouseMotion:
		rotation_degrees.x -= event.relative.y * mouse_sensitivity
		rotation_degrees.x = clamp(rotation_degrees.x, min_x_degrees, max_x_degrees)
		
		rotation_degrees.y -= event.relative.x * mouse_sensitivity
		rotation_degrees.y = wrapf(rotation_degrees.y, 0, 360.0)
			
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
