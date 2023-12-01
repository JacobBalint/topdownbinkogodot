
extends CharacterBody2D

var active = false
var speed = 15
@onready var nav = $NavigationAgent2D
var health = 3
# Called when the node enters the scene tree for the first time.
func _ready():
	nav.target_position = Globals.player_pos

func _process(delta):
	if active == true:
		var target = nav.get_next_path_position()
		var direction = (target - global_position).normalized()
		velocity = direction * speed
		move_and_slide()
	if health <= 0:
		queue_free()

func hit():
	health -= 1




func _on_nav_timer_timeout():
	nav.target_position = Globals.player_pos


func _on_area_2d_body_entered(body):
	active = true
