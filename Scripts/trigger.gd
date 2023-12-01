extends Area2D
@export_file() var file
var can_enter = false
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("interact") and can_enter == true:
		get_tree().change_scene_to_file(file)


func _on_body_entered(body):
	can_enter = true


func _on_body_exited(body):
	can_enter = false
