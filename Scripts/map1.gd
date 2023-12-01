extends Node2D
class_name Map
@onready var bullet_scene = preload("res://Scenes/Objects/bullet.tscn")
@onready var projectiles = $Projectiles
@onready var tilemap = $Map
func _ready():
	pass
func fire():
	var bullet = bullet_scene.instantiate()
	projectiles.add_child(bullet)
	
	




