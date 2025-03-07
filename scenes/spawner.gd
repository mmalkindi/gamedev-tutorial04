extends Node2D

@export var obstacle: PackedScene
@export var spawn_range: float = 0
@export var min_interval: float = 1
@export var max_interval: float = 1


func _ready():
	repeat()


func spawn():
	var spawned = obstacle.instantiate()
	get_parent().add_child.call_deferred(spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + randf_range(-spawn_range, spawn_range)

	spawned.global_position = spawn_pos


func repeat():
	spawn()
	await get_tree().create_timer(randf_range(min_interval, max_interval)).timeout
	repeat()
