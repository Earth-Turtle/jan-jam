extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	print(body.to_string() + " entered civilian body")
	timer.start()


func _on_timer_timeout() -> void:
	print("restarting level")
	
	get_tree().reload_current_scene()
