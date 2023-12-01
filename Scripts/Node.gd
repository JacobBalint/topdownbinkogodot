extends Node2D

@onready var anim = $AnimatedSprite2D
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
func _process(delta):
	global_position = get_global_mouse_position()
	if Globals.on_title == true:
		
		anim.animation = "title_click"
		if Input.is_action_just_pressed("fire"):
			anim.play("title_click")
		
	else:
		
		anim.animation = "click"
		if Input.is_action_just_pressed("fire"):
			anim.play("click")
		
		
