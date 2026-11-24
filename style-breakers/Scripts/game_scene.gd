extends Node2D
var winner_name = ""
var player2Scene = preload("res://player.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	var player2 = player2Scene.instantiate()
	add_child(player2)
	player2.global_position = Vector2(1130, 476)
