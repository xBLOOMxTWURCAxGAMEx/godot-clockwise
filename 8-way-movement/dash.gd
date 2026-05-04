extends State
class_name dash
@export var sprite: AnimatedSprite2D
func Enter():
	sprite.play("dash")
func Exit():
	pass
func Update(_delta:float):
	if(Input.get_vector("MoveDown","MoveLeft","MoveRight","MoveUp")):
		change_state(run)
	if(Input.is_action_just_pressed("Attack")):
		change_state(attack)
	if(Input.is_action_just_pressed("Dash")):
		change_state(dash)
