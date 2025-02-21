extends Area2D

func _on_DeathPlane_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip" or body.name == "GreenShip"):
		print("Ship is out of bounds!")
		print("Restarting level...")
		get_tree().reload_current_scene()
