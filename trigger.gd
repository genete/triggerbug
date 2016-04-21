
extends KinematicBody2D

var velocity=Vector2(10, 0)

func _ready():
	set_fixed_process(true)
	
func _fixed_process(delta):
	var motion =velocity*delta
	motion=move(motion)
	if is_colliding():
		print("collision detected")

