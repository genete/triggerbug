#Trigger
extends KinematicBody2D

var velocity=Vector2(40, 0)

func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	var motion =velocity*delta
	motion=move(motion)
	if is_colliding():
		print("collision detected")
		velocity=Vector2(0,0)
		var collider=get_collider()
		if collider.has_user_signal("my_signal"):
			print("collider has my signal and ...")
			collider.emit_signal("my_signal")
		else:
			print("collider HASN'T my_signal, but...")
			collider.emit_signal("my_signal")

func _callback_trigger():
	print("callback trigger executed!")