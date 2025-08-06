extends Node

#@onready var platform := get_node("res://Scenes/disappearing_platform.tscn")

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		var green_group = get_tree().get_nodes_in_group("Blocks_Green")
		for members in green_group:
			members.visible = false
			members.collision = false
		#emit_signal("button_pressed")

#signal button_pressed
#
#var green_group = get_tree().get_nodes_in_group("Blocks_Green")
#
#func _on_button_button_pressed() -> void:
