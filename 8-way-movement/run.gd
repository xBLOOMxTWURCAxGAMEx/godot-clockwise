extends state
class_name run
@export var sprite: AnimatedSprite2D
func Enter():
	sprite.play("run")
func Exit():
	velocity=0
func Update(_delta:float):
	if(Input.is_action_just_pressed("Attack")):
		#przejscie do ataku
	if(Input.is_action_just_pressed("Dash")):
		#przejscie do dasha
