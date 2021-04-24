extends Control


func _ready():
	pass


func _physics_process(_delta):
	$Lives.text = "Lives: " + str(Global.lives)
	$Time.text = "Time: " + str(Global.time)
