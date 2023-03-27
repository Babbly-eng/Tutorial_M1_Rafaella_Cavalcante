#Define que o script é uma classe Node2D
extends Node2D

# Define uma função que será chamada quando um corpo entrar na área 2D conectada a esse nó
func _on_Area2D_body_entered(body):
	# Muda a cena atual para "telaphilldois.tscn"
	get_tree().change_scene("res://telaphilldois.tscn")
