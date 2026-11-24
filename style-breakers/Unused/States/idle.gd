extends State
class_name Idle

@onready var player: CharacterBody2D = $/root/GameScene/Player
@onready var sprite: AnimatedSprite2D = $/root/GameScene/Player/AnimatedSprite2D

func enter():
	pass
func exit():
	pass
func update(delta):
	pass
func physics_update(delta):
	if player.is_on_floor():
		player.velocity = Vector2.ZERO
	else:
		player.velocity.x = 0.0
	var direction = Input.get_axis("ui_left","ui_right")
	if direction != 0:
		transitioned.emit("run")
