#Run.gd 
extends StatePlayer

func enter(_msg: Dictionary = {}):
	$"../../Control/l_state".set_text(name)
	
func inner_physics_process(delta):
	player.velocity = Vector2.ZERO# Сбрасываем скорость
	var directionx = Input.get_axis("ui_left", "ui_right")
	if directionx:
		player.velocity.x = directionx * player.SPEED
		player.animation.play("runx")
	else:
		player.velocity.x = move_toward(player.velocity.x, 0, player.SPEED)
	if directionx < 0:
		player.animation.set_flip_h(true)
	elif directionx > 0:
		player.animation.set_flip_h(false)
	var directiony = Input.get_axis("ui_up", "ui_down")
	if directiony:
		player.velocity.y = directiony * player.SPEED
	else:
		player.velocity.y = move_toward(player.velocity.x, 0, player.SPEED) 
	if directiony < 0:
		player.animation.play("runyup")
	elif directiony > 0:
		player.animation.play("runydown")	
	player.move_and_slide()
	if player.velocity.x == 0 and player.velocity.y == 0 and directionx == 0 and directiony == 0:
		state_machine.change_to("Idle") 

	
	
