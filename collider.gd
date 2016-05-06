#Collider
extends KinematicBody2D

signal my_signal

func _ready():
	var trigger=get_node("/root/Node2D/Trigger")
	connect("my_signal", trigger, "_callback_trigger")



