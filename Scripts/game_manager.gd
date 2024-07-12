extends Node

var score = 0

@onready var scoreLabel = %scoreLabel

func add_point():
	score += 1
	scoreLabel.text = "Awesome!\nYou collected\n" + str(score) + " coins!"
