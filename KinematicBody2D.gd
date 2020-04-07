extends KinematicBody2D

const UP = Vector2(0,-1)
var motion=Vector2()

func _physics_process(delta):
	motion.y+=30
	if Input.is_action_pressed("ui_right"):
		motion.x = 300
	elif Input.is_action_pressed("ui_left"):
		motion.x = -300
	else:
		motion.x = 0
	if is_on_floor():
		print("Player Object is On Floor")
		if Input.is_action_just_pressed("ui_up"):
			motion.y=-600
	move_and_slide(motion,UP)
	pass
