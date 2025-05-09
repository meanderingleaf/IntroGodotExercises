extends Node2D

var score = 0
@export var txtScore : Label
@export var player : Node2D
@export var spawner : Node2D

@export var highscoreUI : Control
@export var scoresContainer : Control

var iIndex = 0
var highScores = []
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _add_score():
	score += 1
	txtScore.text = str(score)
	
func game_over():
	
	#this is lazy..
	if(player != null):
		player.queue_free()
		spawner.queue_free()
	
	#Project Start
	var file = FileAccess.open("res://saveData/highScore.txt", FileAccess.READ)
	
	highScores = file.get_var()
	
	
	
	if len(highScores) < 5:
		highscoreUI.visible = true
		iIndex = len(highScores) - 1
		return
	
	var itemIndex = 0
	for savedScore in highScores:
		itemIndex += 1
		if score > savedScore:
			highscoreUI.visible = true
			
			iIndex = itemIndex

func _on_btn_enter_name_pressed() -> void:
	if len(highScores) > 5:
		highScores.renove_at(iIndex)
		highScores.insert(iIndex, score)
	else:
		highScores.append(score)
	
	var file = FileAccess.open("res://saveData/highScore.txt", FileAccess.WRITE)
	file.store_var(highScores)
	
	for aScore in highScores:
		var aScoreLabel = Label.new()
		
		aScoreLabel.text = str(aScore)
		
		scoresContainer.add_child(aScoreLabel)
