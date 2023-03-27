# Define que esse script estende a classe KinematicBody2D
extends KinematicBody2D

# Função chamada a cada quadro para atualizar a lógica de física do objeto
func _physics_process(delta):
	# Define um vetor para armazenar o movimento do objeto
	var movimento = Vector2.ZERO
	# Define o movimento no eixo X com base na entrada do jogador nas teclas de seta direita e esquerda
	movimento.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	# Move o objeto com a função move_and_slide, multiplicando o vetor de movimento por 100
	move_and_slide(movimento*100)
	
#	 Verifica se o objeto está parado (movimento horizontal é zero)
	if movimento.x == 0:
		# Define a animação "parar" para o AnimatedSprite
		$AnimatedSprite.animation = "parar"
		# Para a reprodução do áudio de passos
		$Passos.stop()
	
	# Verifica se o objeto está andando para a direita
	elif movimento.x > 0:
		# Define a animação "andar" para o AnimatedSprite
		$AnimatedSprite.animation = "andar"
		# Define a rotação horizontal (flip_h) do AnimatedSprite para a direita (false)
		$AnimatedSprite.flip_h = false
		# Inicia a reprodução da animação "andar" no AnimatedSprite
		$AnimatedSprite.play("andar")
		# Verifica se o áudio de passos não está sendo reproduzido e, se não estiver, inicia a reprodução
	if !$Passos.playing:
		$Passos.play()
	# Verifica se o objeto está andando para a esquerda
	elif movimento.x < 0:
		# Define a animação "andar" para o AnimatedSprite
		$AnimatedSprite.animation = "andar"
		# Define a rotação horizontal (flip_h) do AnimatedSprite para a esquerda (true)
		$AnimatedSprite.flip_h = true
		# Inicia a reprodução da animação "andar" no AnimatedSprite
		$AnimatedSprite.play("andar")
		# Verifica se o áudio de passos não está sendo reproduzido e, se não estiver, inicia a reprodução
	if !$Passos.playing:
		$Passos.play()
