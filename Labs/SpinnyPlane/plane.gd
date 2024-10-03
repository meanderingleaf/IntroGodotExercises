extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Flap"):
		self.apply_force(Vector2(0, -10000))
		get_node("PlaneSpr").play("Flap")
		get_node("PlaneSpr").play("Flap")
	pass


func _on_animated_sprite_2d_animation_finished() -> void:
	get_node("PlaneSpr").play("Glide")
	
	pass # Replace with function body
