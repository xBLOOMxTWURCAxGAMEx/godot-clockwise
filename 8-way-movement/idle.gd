extends State
class_name idle
@export var sprite: AnimatedSprite2D
var tmp: FSM
func Enter():
	sprite.play("idle")
func Exit():
	pass
func Update(_delta:float):
	if(Input.get_vector("MoveDown","MoveLeft","MoveRight","MoveUp")):
		tmp.change_state(run)
	if(Input.is_action_just_pressed("Attack")):
		tmp.change_state(attack)
	if(Input.is_action_just_pressed("Dash")):
		tmp.change_state(run)
