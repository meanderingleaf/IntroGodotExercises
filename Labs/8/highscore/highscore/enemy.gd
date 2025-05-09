extends CharacterBody2D


const SPEED = 300.0

func _physics_process(delta):
	velocity.y = 1
	
	if self.position.y > 400:
		get_node("/root/SpaceShooterGame").game_over()
	
	move_and_collide(self.velocity)
