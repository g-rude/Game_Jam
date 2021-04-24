extends Node

<<<<<<< HEAD
var lives = 10
var max_lives = 10


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

func decrease_lives(l):
	lives -= 1
	if lives <= 0:
		get_tree().change_scene("")

func _process(delta):
=======
func _process(_delta):
>>>>>>> e2779c462ed3e4061c525815d1868097fd652770
	if Input.is_action_pressed("quit"):	
		get_tree().quit()
