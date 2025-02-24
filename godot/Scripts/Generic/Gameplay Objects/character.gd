class_name Character
extends CharacterBody2D

var current_health: float
@export var _max_health: float = 10:
	set(value): 
		_readonly_value_access("max health")

var state_machine: State_Machine
var _initial_state: State:
	set(value): 
		_readonly_value_access("initial state")

func _readonly_value_access(val_name: String):
	push_error("A character's %s was set to! Assure this is intentional, as this is a readonly value!" % val_name)

func _init(initial_state: State):
	_initial_state = initial_state

# Sets all values to what they should be on spawn.
func set_default_values():
	current_health = _max_health
	state_machine = State_Machine.new(_initial_state.duplicate(), self)
