extends Node2D

var numeros = ["um", "dois","três", "quatro"]
var listinha = []
var keep

func _on_Button_pressed():
	$Label.text = str(numeros)


func _on_Button2_pressed():
	listinha = $LineEdit.text.split(" ")
	$Label2.text = str(listinha)
	
func _on_Button3_pressed():
	$Label3.text = "Parabéns!"


func _on_Button4_pressed():
	keep = $LineEdit2.text
	$Label4.text = keep
