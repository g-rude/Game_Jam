extends StaticBody2D

var player = null
export var damage = 10

func _ready():
	pass 


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		body.do_damage(damage)
		queue_free()

