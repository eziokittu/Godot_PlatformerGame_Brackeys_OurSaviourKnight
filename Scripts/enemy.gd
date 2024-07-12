extends Node2D

@onready var rayCastRight = $RayCastRight
@onready var rayCastLeft = $RayCastLeft
@onready var animatedSprite = $AnimatedSprite2D

const SPEED = 60.0
var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if rayCastRight.is_colliding():
		direction = -1
		animatedSprite.flip_h = true
	if rayCastLeft.is_colliding():
		direction = 1
		animatedSprite.flip_h = false
	position.x += direction * SPEED * delta
