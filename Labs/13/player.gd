extends CharacterBody3D

@export var speed = 10
@export var rayCastNode: RayCast3D
@export var joint : PinJoint3D

func _unhandled_input(event: InputEvent):
	if event is InputEventMouseMotion:
		self.rotate_y(-event.relative.x * 0.01)



func _process(delta):
	if Input.is_action_just_pressed("click"):
		if rayCastNode.is_colliding():
			var target = rayCastNode.get_collider()
			if target.is_in_group("box"):
				joint.set_node_b(target.get_path())
	
	if Input.is_action_just_pressed("release"):
		joint.set_node_b("")

func _physics_process(delta: float):
	var inputDir = Input.get_vector("left", "right", "forward", "back")
	var direction = (self.transform.basis * Vector3(-inputDir.x, 0, -inputDir.y)).normalized()
	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
		
		move_and_slide()
