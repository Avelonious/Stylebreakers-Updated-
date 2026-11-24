class_name Hurtbox
extends Area2D

func _on_area_entered(area: Area2D) -> void:
	print("Hurtbox on ", owner.name, " hit by: ", area.name)
	if area.has_method("get_damage"):
		print("Damage: ", area.get_damage())
		owner.take_damage(area.get_damage())
	
