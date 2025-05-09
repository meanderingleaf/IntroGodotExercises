extends CharacterBody3D

@export var speed = -10

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		self.rotate_y(-event.relative.x * 0.01)

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("forward"):
		self.velocity = get_global_transform().basis.z * speed
		move_and_slide()

func _process(delta: float) -> void:
	if get_node("/root/WalkingSim/AlertZone").playerInside == true and Input.is_action_just_pressed("interact"):
		get_node("/root/WalkingSim/AlertZone/Yay").play(0.0)
