extends Container
@onready var label_2: Label = $Label2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label_2.text="Score "+str(Gb.score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	label_2.text="Score "+str(Gb.score)
	pass
