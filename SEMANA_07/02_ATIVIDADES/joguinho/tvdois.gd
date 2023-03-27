#Define que o script é uma classe Node2D
extends Node2D

#A função _on_Timer_timeout() é chamada quando o temporizador chega ao seu limite de tempo.
func _on_Timer_timeout():
	# A função get_tree().quit() é responsável por fechar o aplicativo.
	get_tree().quit()
