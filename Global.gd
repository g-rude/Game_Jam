extends Node

var lives = 10
var max_lives = 10
var health = 10
var max_health = 10


func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	
func _unhandled_input(_event):
	if Input.is_action_just_pressed("quit"):
		var menu = get_node_or_null("/root/Game/HUD/Main")
		if menu != null:
			if not menu.visible:
				menu.show()
				get_tree().paused = true
			else:
				menu.hide()
				get_tree().paused = false

func decrease_health(h):
	health -= h

func decrease_lives(l):
	lives -= 1
	health = max_health
	if lives <= 0:
		get_tree().change_scene("res://HUD/Win.tscn")

func _process(_delta):
	pass

	if Input.is_action_pressed("quit"):
		get_tree().quit()
