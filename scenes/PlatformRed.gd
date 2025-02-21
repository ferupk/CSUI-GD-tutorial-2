extends Node2D

@export var speed = 300.0

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Red Platform initialized")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("move_left"):
		move_local_x(-speed * delta, false)
	
	if Input.is_action_pressed("move_right"):
		move_local_x(speed * delta, false)
