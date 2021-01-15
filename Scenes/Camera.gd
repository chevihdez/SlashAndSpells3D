extends Camera


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	translation.z = get_node("/root/Main/Player").translation.z
	translation.y = get_node("/root/Main/Player").translation.y +2
