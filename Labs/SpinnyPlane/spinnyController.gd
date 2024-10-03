extends Node2D

@export var rockResource: Resource

var rock = preload("res://rock.tscn")
var plane = preload("res://plane.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func planeHit():
	get_node("Control").visible = true
	get_node("SFX/Thud").play(0.0)
	get_node("Plane").queue_free()
	get_node("Control/AnimationPlayer").play("slideIn")
	get_node("Rock_Timer").stop()
	
	pass

func _on_rock_timer_timeout() -> void:
	inst()
	pass # Replace with function body.

func inst():
	var rock = rock.instantiate()
	if randf() < 0.5:
		rock.position = Vector2(1100, 645)
	else:
		rock.position = Vector2(1100, 0)
		rock.rotation = 3.14159265358979323846289725
	get_node("/root/SpinnyPlane").add_child(rock)
	
func instPlane():
	var plane = plane.instantiate()
	get_node("/root/SpinnyPlane").add_child(plane)
	
	


func _on_button_button_down() -> void:
	get_node("Rock_Timer").start()
	instPlane()
	get_node("Control").visible = false
	pass # Replace with function body.
