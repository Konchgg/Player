#Player.gd
class_name Player
extends CharacterBody2D

const  SPEED = 150.0

@onready var animation = $AnimatedSprite2D

#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
#func _physics_process(delta):
	#if not is_on_floor():
		#velocity.y += gravity * delta
	#var directionx = Input.get_axis("ui_left", "ui_right")
	#if directionx:
		#velocity.x = directionx * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
	#var directiony = Input.get_axis("ui_up", "ui_down")
	#if directiony:
		#velocity.y = directiony * SPEED
	#else:
		#velocity.y = move_toward(velocity.x, 0, SPEED) 
	#move_and_slide()
