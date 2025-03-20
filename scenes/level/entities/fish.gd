extends RigidBody2D

@export var change_to_scene = "LoseScreen"


func _on_body_entered(body: Node) -> void:
	if body.get_name() == "Player":
		get_tree().change_scene_to_file(str("res://scenes/" + change_to_scene + ".tscn"))
	else:
		self.queue_free()
