extends Control

func _process(delta):
	if $AudioStreamPlayer.playing == false:
		$AudioStreamPlayer.playing = true
	





func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Levels/world.tscn")
