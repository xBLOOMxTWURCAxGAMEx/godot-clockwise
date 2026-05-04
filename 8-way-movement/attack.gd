extends State
class_name attack
@export var sprite: AnimatedSprite2D
func Enter():
	sprite.play("idle")
func Exit():
	pass
func Update(_delta:float):
	if(Input.get_vector("MoveDown","MoveLeft","MoveRight","MoveUp")):
		#przejscie do ruchu 
	if(Input.is_action_just_pressed("Dash"):
		#przejscie do dasha
