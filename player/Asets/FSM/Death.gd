#Death.gd
extends StatePlayer
func enter(_msg: Dictionary = {}):
	$"../../Control/l_state".set_text(name)
func inner_physics_process(_delta: float):
	if	!Input.is_action_pressed("ui_accept"):
		state_machine.change_to("Idel")
