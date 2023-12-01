extends CharacterBody2D
class_name Player
var normal_speed = 25
@onready var marker = $Marker2D
@onready var marker2 = $Marker2D2
var direction
@onready var cam = $Camera2D
var can_dash = true
var dash_speed = 125
var dash_length = .1
@onready var dash = $Dash
func _ready():
	Globals.can_shoot = true

func _process(_delta):
	if Input.is_action_just_pressed("dash") and can_dash == true:
		can_dash = false
		dash.start_dash(dash_length)
		$DashTimer.start()
	var speed = dash_speed if dash.is_dashing() else normal_speed
	Globals.player_pos = global_position
	Globals.marker_pos = marker.global_position
	Globals.marker2_pos = marker2.global_position
	
	look_at(get_global_mouse_position())
	direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	if Input.is_action_just_pressed("fire") and Globals.can_shoot == true:
		fire_weapon()
	
		
		
	
	move_and_slide()
	
func fire_weapon():
	Globals.can_shoot = false
	cam.add_trauma(.1)
	$Timer.start()


func _on_timer_timeout():
	Globals.can_shoot = true
	


	


func _on_dash_timer_timeout():
	can_dash = true
