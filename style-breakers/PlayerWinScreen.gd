extends Control
@onready var victoryMessage: Label = $"BG/VictoryScreen/CenterContainer/VBoxContainer/Victory Message"

var playerName = ""
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	victoryMessage.text = playerName + "Wins!"
	if GameScene.winner_name.is_empty():
		victoryMessage.text = "Draw!"
	else:
		victoryMessage.text = "%s Wins!" % GameScene.winner_name

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://GameScene.tscn")


func _on_button_2_pressed() -> void:
	get_tree().quit()
