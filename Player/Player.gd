extends KinematicBody

export var speed: float = 7
var gravity = 100
func _physics_process(delta):
	if Input.is_key_pressed(KEY_UP):
		$AnimationPlayer.playback_speed += .1
	if Input.is_key_pressed(KEY_DOWN):
		$AnimationPlayer.playback_speed -= .1

	var wishdir = Vector3()

	if Input.is_key_pressed(KEY_A):
		wishdir += Vector3.FORWARD
		$LeftAndRight.play("Left")
		
		
	elif Input.is_key_pressed(KEY_D):
		wishdir += Vector3.BACK
		rotation_degrees.y = 0
		$LeftAndRight.play("Right")
		
		
	wishdir.y -= gravity *delta
	wishdir = wishdir.normalized()
	
	move_and_slide(wishdir * speed, Vector3.UP)

func play_animation(target):
		$AnimationPlayer.play(target)
func _input(event):
	if Input.is_key_pressed(KEY_A):
		play_animation("Run")
	elif Input.is_key_pressed(KEY_D): 
		play_animation("Run")
	else:
		play_animation("Idle")
