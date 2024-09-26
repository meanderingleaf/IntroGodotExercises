extends Node2D
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func coin_collected():
	score += 1
	get_node("Score").text = str(score)


func _on_coin_body_entered(body: Node2D) -> void:
	coin_collected()
	if score >= 5:
		get_tree().change_scene_to_file("res://game_over.tscn")
	pass # Replace with function body.




func _on_area_2d_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://game_over.tscn")
	pass # Replace with function body.
