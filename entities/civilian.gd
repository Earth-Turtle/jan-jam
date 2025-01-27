extends Node2D

signal civilian_death(dead_civilian: Node2D)

func _on_civilian_hitbox_body_entered(body: Node2D) -> void:
	print("Player entered civilian body")
	civilian_death.emit(self)
	$AnimatedSprite2D.animation = "dead"
	



func _on_civilian_death(dead_civilian: Node2D) -> void:
	look_at(transform.origin + dead_civilian.transform.origin)
	pass # Replace with function body.
