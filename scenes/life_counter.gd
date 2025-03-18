extends Label


func _process(_delta: float) -> void:
	self.text = "Lives : " + str(Global.lives)
