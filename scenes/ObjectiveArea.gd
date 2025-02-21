extends Area2D

@export var targetLevel = 1

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip" or body.name == "GreenShip"):
		print("Reached objective!")
		print("Onto level %s" % targetLevel)
		get_tree().change_scene_to_file("res://scenes/levels/Level%s.tscn" % targetLevel)
