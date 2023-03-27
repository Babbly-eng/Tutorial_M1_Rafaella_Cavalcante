# Define que o script é uma classe Node2D
extends Node2D

#Define a função que será executada quando um objeto entrar na área 2D
#Esta função recebe um argumento 'body', que é o corpo que entrou na área 2D
func _on_Area2D_body_entered(body):
	# Chama a função 'change_scene' da árvore do nó atual e muda para a cena 'telaphilltres.tscn'
	get_tree().change_scene("res://telaphilltres.tscn")
