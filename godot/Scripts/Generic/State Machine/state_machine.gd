class_name State_Machine
extends Node2D

var state_machine_owner
var current_state: State

func _init(input_state: State = null, state_machine_owner = null) -> void:
	self.current_state = input_state
	self.state_machine_owner = state_machine_owner

# Does one tick of the state machine behaviour.
func act(input_value = null) -> void:
	current_state.act(input_value)
	
	var next_state = current_state.get_next_state(input_value)
	if (next_state != current_state):
		current_state.exit_state(input_value)
		next_state.enter_state(input_value)
		current_state = next_state
