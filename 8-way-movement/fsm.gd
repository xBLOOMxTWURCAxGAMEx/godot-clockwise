extends Node
class_name FSM
var states:Dictionary={}
var current_state:State
@export var in_state:State #inicjalny stan
func _ready():
	for child in get_children():
		if child is State:
			states[child.name.to_lower()]=child
			child.state_transition.connect(change_state)
	if in_state:
		in_state.Enter()
		current_state=in_state
func change_state(old_state: State, new_state_name: String):
	if old_state!=current_state:
		print("invalid proba przejscia z:"+old_state.name+"ale obecnie w"+current_state.name)
		return
	var new_state=states.get(new_state_name.to_lower())
	if !new_state:
		print("nowy stan jest pusty")
		return
	if current_state:
		current_state.Exit()
	new_state.Enter()
	current_state=new_state
func _process(delta):
	if current_state:
		current_state.Update(delta)
	
