extends Map

var can_enter = false
# Called when the node enters the scene tree for the first time.
func _ready():
	Globals.on_title = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("fire") and Globals.can_shoot == true:
		fire()
	

