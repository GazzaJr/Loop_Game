extends Node

@onready var platform = get_node("res://Scenes/disappearing_platform.tscn")

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		platform.visible = false
