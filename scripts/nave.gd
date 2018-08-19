extends Node2D

var vel = 300

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	
	var d = 0
	var e = 0
		
	if Input.is_action_pressed("direita"):
		d = 1
	
	if Input.is_action_pressed("esquerda"):
		e = -1
	
	if position.x > (640 - 50):
		d = 0
	
	if position.x < 50:
		e = 0
	
	
	position += Vector2(vel, 0) * delta * (d + e)
	
	pass
