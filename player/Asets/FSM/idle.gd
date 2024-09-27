#Idle.gd
extends StatePlayer
func enter(_msg: Dictionary={}):
	player.velocity = Vector2.ZERO	
	$"../../Control/l_state".set_text(name)
func inner_physics_process(_delta: float):
	if Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right") or Input.is_action_pressed("ui_up") or Input.is_action_pressed("ui_down"):
		state_machine.change_to("Run")
	player.animation.play("idel")
	if Input.is_action_pressed("ui_accept"):
		state_machine.change_to("Death")
