class_name State

var state_machine_owner

func _init(state_machine_owner = null):
	self.state_machine_owner = state_machine_owner

# Done when entering this state from a different one.
func enter_state(input_value = null):
	pass

# Done on every loop of the state machine.
func act(input_value = null):
	pass

# Done on every loop of the state machine, returns a new state.
func get_next_state(input_value = null) -> State:
	return self

# Done when switching from this state to a new state.
func exit_state(input_value = null):
	pass
