extends Node2D

var start_level = "Level1"

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("fire"):
		get_tree().change_scene_to_file(str("res://scenes/" + start_level + ".tscn"))
