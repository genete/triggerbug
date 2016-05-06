#Collider
extends KinematicBody2D

signal my_signal

func _ready():
	var trigger=get_node("/root/Node2D/Trigger")
	add_user_signal("my_signal")
	connect("my_signal", trigger, "_callback_trigger")
	if has_user_signal("my_signal"):
		print("Collider has user signal: my_signal")



