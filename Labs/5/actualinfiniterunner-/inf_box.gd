extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	print("As a body the same size")
	bodyHit()
	
	pass # Replace with function body.

func bodyHit():
	get_node("/root/runner/InfinitePlayer/AnimatedSprite2D").play("crash")
	get_node("/root/runner/sfx/Crash").play(0.0)
