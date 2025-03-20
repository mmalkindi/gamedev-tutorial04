extends MarginContainer


func _on_menubutton_pressed(change_scene_to: String) -> void:
	get_tree().change_scene_to_file(str("res://scenes/" + change_scene_to + ".tscn"))
