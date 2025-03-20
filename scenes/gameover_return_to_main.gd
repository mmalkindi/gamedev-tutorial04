extends Button


func _pressed():
	get_tree().change_scene_to_file(str("res://scenes/MainMenu.tscn"))
	Global.lives = 3  # reset lives to 3
