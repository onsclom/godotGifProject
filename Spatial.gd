extends Spatial

var cubeScene = preload("res://block.tscn")
#cubes radius
var cubes = 15

var time = 0
var screensCount = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	for x in range(-cubes,cubes+1):
		for z in range(-cubes,cubes+1):
			var newCube = cubeScene.instance()
			newCube.transform.origin = Vector3(float(x), 0, float(z))
			add_child(newCube)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if time <= 3.14:
		var image = get_viewport().get_texture().get_data()
		image.flip_y()
		image.save_png("/home/austin/Desktop/testing123/gifScreens/screenshot" + str(screensCount) + ".png")
		screensCount += 1
		time += .05
	
#	time += delta
