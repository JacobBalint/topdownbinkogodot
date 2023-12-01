extends Node2D
@onready var anim = $AnimatedSprite2D
var test = true
@onready var raycast = $RayCast2D
func _ready():
	global_position = Globals.marker_pos
	look_at(Globals.marker2_pos)
	anim.play("fire")
	
	await anim.animation_finished
	queue_free()

func _process(delta):
	if raycast.is_colliding() and test == true:
		raycast.get_collider().hit()
		test = false
		$Timer.start()





func _on_timer_timeout():
	test = true
