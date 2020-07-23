extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var offset = 0
var offsetStrength = .015
var speed = 2
var screensCount = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	offset = pow( transform.origin.distance_to(Vector3(0,0,0)), 2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	scale.y = 1 + (sin(get_parent().time*speed+offset*offsetStrength)+1)*4
	pass
