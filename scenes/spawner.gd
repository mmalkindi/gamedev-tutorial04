extends Node2D

@export var obstacle: PackedScene
@export var spawnRange: float = 0
@export var minInterval: float = 1
@export var maxInterval: float = 1
var rng = RandomNumberGenerator.new()


func _ready():
	repeat()


func spawn():
	var spawned = obstacle.instantiate()
	get_parent().add_child.call_deferred(spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + randf_range(-spawnRange, spawnRange)

	spawned.global_position = spawn_pos


func repeat():
	spawn()
	await get_tree().create_timer(rng.randf_range(minInterval, maxInterval)).timeout
	repeat()
