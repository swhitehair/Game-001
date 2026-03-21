extends StaticBody2D
var enterable = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	enter_door()

func _on_door_entrance_body_entered(body: Node2D) -> void:
	print("entered")
	enterable = true

func enter_door():
	if enterable:
		if Input.is_action_just_pressed("enter"):
			print("success")
