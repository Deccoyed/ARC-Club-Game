extends CharacterBody2D


const SPEED = 100.0

func getInput():
	look_at(get_global_mouse_position())
	
	var direction = Input.get_vector("left","right","up", "down")
	
	if direction:
		velocity = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)


func _physics_process(delta: float) -> void:
	
	getInput()
	move_and_slide()
