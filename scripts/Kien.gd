extends KinematicBody2D


# Declare member variables here. Examples:
const speed = 50
const jump_power = -40
var velocity = Vector2()
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _physics_process(delta):

	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	else:
		velocity.x = 0

	if Input.is_action_pressed("ui_up"):

		velocity.y = -20
	elif Input.is_action_pressed("ui_down"):

		velocity.y = 20
	else:

		velocity.y = 0
# warning-ignore:return_value_discarded
	move_and_slide(velocity)
