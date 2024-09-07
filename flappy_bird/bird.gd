extends CharacterBody2D

@export var jump_sped: int = 430
var gravity = 98
var starting_pos: Vector2
var the_angle_of_rotation=45
var the_directio_of_retation : int 



const screen_w=964
const screen_h=648

func _ready() -> void:
	pass 
	
func _process(delta: float) -> void:
	the_directio_of_retation=0
	aplay_gravity(delta)
	force(delta)
	rotation=the_angle_of_rotation*the_directio_of_retation
	#the limit for the floor and the silling 
	if position.y > screen_h/8:
		gravity=0
		position.y=screen_h/8
	if position.y < (-screen_h/4)+30 :
		gravity=0
		position.y=-(screen_h/4)+30
	
	
	
	
	
func aplay_gravity(D_FPS) -> void:
	if not is_on_floor():
		
		gravity=98
		rotation=0
		position.y += gravity*D_FPS
		
	
		
func force(D_FPS)-> void:
	var click = Input.is_action_pressed("force")
	if click:
		the_directio_of_retation =-1
		position.y -= jump_sped*D_FPS
	
	
			
