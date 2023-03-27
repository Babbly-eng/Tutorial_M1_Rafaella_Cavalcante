# Define que esse script é uma extensão da classe Node2D
extends Node2D

# Função executada quando o botão é pressionado
func _on_Button_pressed():
	# Chama a função change_scene da cena principal para trocar a cena atual pela cena "tv.tscn"
	get_tree().change_scene("res://tv.tscn")
