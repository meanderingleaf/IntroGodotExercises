extends Node3D

@export var BOOM : AudioStreamPlayer
var numCubes = 0

func collectCube():
	numCubes += 1
	if numCubes >= 3:
		$Boom.play(0.0)

func removeCube():
	numCubes -= 1
