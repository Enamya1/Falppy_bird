extends Area2D
@onready var pipe=preload("res://pipe.tscn")

func _on_area_entered(area: Area2D) -> void:
	var difeculty =Gb.score
	var L_difeculty =difeculty*2
	if L_difeculty >120 :
		L_difeculty=difeculty
	area.queue_free()
	var obj = pipe.instantiate()
	obj.position.x=600
	obj.position.y=randi_range(-L_difeculty,L_difeculty)#the level of diffeclty 
	
	add_child(obj)
	
