extends Area2D
@onready var main_game: Node2D = get_node("/root/main_game")
@onready var area_2d: Area2D = $"."

var pipe_speed = Gb.game_speed
func _process(delta: float) -> void:
	position.x-=delta*pipe_speed


func _on_body_entered(body: Node2D) -> void:
	#Engine.time_scale=0
	
	main_game.get_tree().reload_current_scene()
	Gb.game_speed =60
	Gb.score=0
	
	
	pass # Replace with function body.
