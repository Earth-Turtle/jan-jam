extends Node2D

signal player_entered

func _on_goal_area_entered(area: Area2D) -> void:
	print("Player entered the goal area")
	player_entered.emit()
