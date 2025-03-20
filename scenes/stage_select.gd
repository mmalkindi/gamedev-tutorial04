extends MarginContainer


func _on_stage_pressed(stage_scene_name: String) -> void:
	get_tree().change_scene_to_file(str("res://scenes/" + stage_scene_name + ".tscn"))
