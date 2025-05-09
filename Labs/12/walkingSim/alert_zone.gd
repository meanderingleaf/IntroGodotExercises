extends Area3D

@export var playerInside : bool = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node3D) -> void:
	playerInside = true
	$Label3D.visible = true


func _on_body_exited(body: Node3D) -> void:
	playerInside = false
	$Label3D.visible = false
