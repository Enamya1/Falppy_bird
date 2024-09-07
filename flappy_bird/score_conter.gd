extends Area2D
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D





func _on_body_entered(body: Node2D) -> void:
	
	Gb.score+=1
	
	if Gb.score % 5 ==0 :
		audio_stream_player_2d.play()
	print(Gb.score)
	
	pass # Replace with function body.
