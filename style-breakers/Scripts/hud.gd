extends Control
@onready var player: CharacterBody2D = $"../../Player"
@onready var player_2: CharacterBody2D = $"../../Player2"



@onready var player_health: ProgressBar = $PlayerHealth
@onready var enemy_health: ProgressBar = $Player2Health


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.health_changed.connect(_on_player_health_changed)
	player_health.max_value = player.max_health
	
	player_2.health_changed.connect(_on_enemy_health_changed)
	enemy_health.max_value = player_2.max_health

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_player_health_changed(current: int, _max: int) -> void:
	player_health.value = current
func _on_enemy_health_changed(current: int, _max: int) -> void:
	enemy_health.value = current
	
func end_of_match(winner_name):
	$Message.text = winner_name + "Wins!"
	$Message.visiblity = true
