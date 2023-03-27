# Define a classe do script que estende a classe KinematicBody2D
extends KinematicBody2D
	
#Define a função que é executada a cada quadro do motor de física
func _physics_process(delta):
	# Cria um vetor de movimento com valor inicial zero
	var movimento = Vector2.ZERO
	# Define o valor do eixo x do vetor de movimento de acordo com as teclas pressionadas pelo jogador
	movimento.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	# Move o corpo usando a função move_and_slide com base no vetor de movimento multiplicado por 100
	move_and_slide(movimento*100)
	
	# Verifica se o jogador está parado
	if movimento.x == 0:
		# Define a animação do AnimatedSprite para "parar"
		$AnimatedSprite.animation = "parar"
		# Para a reprodução do áudio de passos
		$Passos.stop()
	# Verifica se o jogador está se movendo para a direita
	elif movimento.x > 0:
		# Define a animação do AnimatedSprite para "andar"
		$AnimatedSprite.animation = "andar"
		# Desfaz a inversão horizontal do AnimatedSprite
		$AnimatedSprite.flip_h = false
		# Inicia a reprodução da animação "andar" do AnimatedSprite
		$AnimatedSprite.play("andar")
		# Verifica se o áudio de passos não está sendo reproduzido
		if !$Passos.playing:
			# Inicia a reprodução do áudio de passos
			$Passos.play()
	# Verifica se o jogador está se movendo para a esquerda
	elif movimento.x < 0:
		# Define a animação do AnimatedSprite para "andar"
		$AnimatedSprite.animation = "andar"
		# Inverte horizontalmente o AnimatedSprite
		$AnimatedSprite.flip_h = true
		# Inicia a reprodução da animação "andar" do AnimatedSprite
		$AnimatedSprite.play("andar")
		# Verifica se o áudio de passos não está sendo reproduzido
		if !$Passos.playing:
			# Inicia a reprodução do áudio de passos
			$Passos.play()
