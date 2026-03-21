extends CharacterBody2D

@export var speed :int = 400
var play_animation = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()


func get_input():
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * speed
	if direction:
		$AnimatedSprite2D.play("walking")
	else:
		$AnimatedSprite2D.stop()
	
func animated_walk():
	pass
