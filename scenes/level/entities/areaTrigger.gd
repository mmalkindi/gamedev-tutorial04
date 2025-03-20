extends Area2D

@export var change_scene_to: String = "level/Level1"


func _on_body_entered(body: Node2D) -> void:
	var current_scene = get_tree().current_scene.get_name()
	if body.get_name() == "Player":
		if "level/" + current_scene == change_scene_to:
			Global.lives -= 1
		if Global.lives == 0:
			get_tree().call_deferred("change_scene_to_file", str("res://scenes/menu/GameOver.tscn"))
		else:
			get_tree().call_deferred(
				"change_scene_to_file", str("res://scenes/" + change_scene_to + ".tscn")
			)
