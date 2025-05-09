extends Node2D

var score = 0
@export var txtScore : Label
@export var player : Node2D
@export var spawner : Node2D

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
	#for you abitious ones:
		#what you _SHOULD_ do is also find all the enemies on the screen and free them as well.
		#FREEEDOM!
	
	#do your thing, students..
	
	pass
	
