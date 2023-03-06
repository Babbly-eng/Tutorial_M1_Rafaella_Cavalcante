extends Node2D


# variáveis declaradas:
var teste = false
var valor = 0
# variável não pode ser escrita com acento
var numero = 0
# "lista" não estava declara como variável
var lista = []

var text
var nome

func _on_Button_pressed():

	# coletando dados inseridos pelo usuário
	# variável não pode ser escrita com acento
	# faltou $ no LineEdit
	numero = int($LineEdit.text)
	# separei o texto de entrada pelo espaço
	nome = $LineEdit.text.split(" ")[0]
	#nome não foi declarado como variável
	$LineEdit.text = nome


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		# variável estava escrita diferente da declarada
		numero += i
		# variável estava escrita diferente da declarada
		lista.append(numero)
		# transformei em string
	$Label.text = str(numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var i = 0
	var cont = 0
	while(len(lista) > i):
		# declarei as variáveis
		if(lista[i]%2==1):
			cont += 1
		i += 1
		
	if(cont!=0):
		nome = nome+"baldo"
	$Label2.text = nome
