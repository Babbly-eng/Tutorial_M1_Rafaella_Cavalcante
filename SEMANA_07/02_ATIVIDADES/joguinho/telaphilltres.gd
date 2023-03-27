#Define que o script é uma classe Node2D
extends Node2D

#Função chamada quando a cena é carregada
func _ready():
	# Inicia o Timer
	$Timer.start()

#Função chamada quando o botão é pressionado
func _on_Button_pressed():
	# Desabilita o botão
	$Button.disabled = true
	# Altera o texto da Label
	$Label.text = "Eu sou um demônio, um dos muitos servos das trevas que habitam o mundo."

#Função chamada quando o Timer é encerrado
func _on_Timer_timeout():
	# Muda para a cena "tvdois.tscn"
	get_tree().change_scene("res://tvdois.tscn")

#Função chamada quando o Timer2 é encerrado
func _on_Timer2_timeout():
	# Torna o botão invisível
	$Button.visible = false
	# Altera o texto da Label
	$Label.text = "Eu sou o mensageiro da morte, aquele que assombra os sonhos dos humanos e os leva para o além."

#Função chamada quando o Timer3 é encerrado
func _on_Timer3_timeout():
	# Altera o texto da Label
	$Label.text = "Eu sou o mensageiro da morte, aquele que assombra os sonhos dos humanos e os leva para o além." 

#Função chamada quando o Timer4 é encerrado
func _on_Timer4_timeout():
	# Torna a sprite 'Phillcabecamal' visível
	$Phillcabecamal.visible = true
