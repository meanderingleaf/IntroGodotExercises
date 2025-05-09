extends Camera3D

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		self.rotate_x(-event.relative.y * 0.01)
		self.rotation.x = clamp(self.rotation.x, deg_to_rad(-30), deg_to_rad(60))
