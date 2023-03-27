#Define que o script é uma classe Node2D
extends Node2D
	
# quando o botão for pressionado, exibe as mensagens de texto, desativa os botões e inicia o timer
func _on_Button_pressed():
	$Label2.show()
	$Button.disabled = true
	$Button2.disabled = true
	$Timer.start()

# mesma coisa do anterior, mas para outro botão
func _on_Button2_pressed():
	$Label3.show()
	$Button.disabled = true
	$Button2.disabled = true
	$Timer.start()

# quando o timer acaba, limpa as mensagens e oculta os botões anteriores, exibindo uma nova mensagem e iniciando outro timer
func _on_Timer_timeout():
	$Label2.text = ""
	$Label3.text = ""
	$Button.visible = false
	$Button2.visible = false
	$Label.text = "Bom, eu não gosto de perder tempo, então vamos começar..."
	$Timer2.start()
	
# quando o timer2 acaba, exibe uma pergunta e os botões para resposta
func _on_Timer2_timeout():
	$Label.text = "Primeira pergunta, você está sozinho?"
	$Button3.visible = true
	$Button4.visible = true
	
# mesma lógica para as outras perguntas e botões de resposta
func _on_Button3_pressed():
	$Label2.visible = true
	$Label2.text = "ERRADO."
	$Button3.disabled = true
	$Button4.disabled = true
	$Timer3.start()
	
func _on_Button4_pressed():
	$Label3.visible = true
	$Label3.text = "Correto."
	$Button3.disabled = true
	$Button4.disabled = true
	$Timer3.start()

func _on_Timer3_timeout():
	$Label2.text = ""
	$Label3.text = ""
	$Label.text = "Segunda pergunta, você é uma pessoa corajosa?"
	$Button5.visible = true
	$Button6.visible = true
	
func _on_Button5_pressed():
	$Label3.visible = true
	$Label3.text = "ERRADO."
	$Button5.disabled = true
	$Button6.disabled = true
	$Timer4.start()
	
func _on_Button6_pressed():
	$Label3.visible = true
	$Label3.text = "Correto."
	$Button6.disabled = true
	$Button5.disabled = true
	$Timer4.start()

func _on_Timer4_timeout():
	$Label.text = "Terceira e última pergunta, você está pronto para começar?"
	$Label2.text = ""
	$Label3.text = ""
	$Button7.visible = true
	$Button8.visible = true
	
func _on_Button7_pressed():
	$Label3.visible = true
	$Label3.text = "É o que você acha..."
	$Button7.disabled = true
	$Button8.disabled = true
	$Timer5.start()

func _on_Button8_pressed():
	$Label3.visible = true
	$Label3.text = "Que pena..."
	$Button8.disabled = true
	$Button7.disabled = true
	$Timer5.start()
	
# quando o timer5 acaba, limpa as mensagens e inicia a próxima cena
func _on_Timer5_timeout():
	$Label2.text = ""
	$Label3.text = ""
	get_tree().change_scene("res://telinha.tscn")
