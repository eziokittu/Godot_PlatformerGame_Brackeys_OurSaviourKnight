extends Area2D

@onready var game_manager = %GameManager
@onready var animationPlayer = $AnimationPlayer

func _on_body_entered(body):
	game_manager.add_point()
	animationPlayer.play("pickup")
