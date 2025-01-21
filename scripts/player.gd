extends CharacterBody2D


var max_velocity:float = 500.0
var acceleration:float = 3000.0
var deceleration:float = 3000.0


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	

func _physics_process(delta:float) -> void:
	
	## Get vector of displacement direction
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	# snappy turnaround movement
	if direction.x * velocity.x < 0:
		velocity.x = 0
	if direction.y * velocity.y < 0:
		velocity.y = 0
	
	velocity = velocity.move_toward(direction * max_velocity, acceleration * delta)
		
	move_and_slide()
	$Sprite2D2.rotation = velocity.angle() + (PI / 2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
