extends PlayerState

func enter():
	print('State Idle | Direction: ' + player.current_direction._name)
	play_animation(player.animations.idle_down)

func process(_delta):
	if Input.is_action_pressed('ui_right'):
		set_current_direction(player.directions.right)
		state_machine.change_to(player.states._walk)
	
	if Input.is_action_pressed('ui_left'):
		set_current_direction(player.directions.left)
		state_machine.change_to(player.states._walk)
	
	if Input.is_action_pressed('ui_up'):
		set_current_direction(player.directions.up)
		state_machine.change_to(player.states._walk)
	
	if Input.is_action_pressed('ui_down'):
		set_current_direction(player.directions.down)
		state_machine.change_to(player.states._walk)
