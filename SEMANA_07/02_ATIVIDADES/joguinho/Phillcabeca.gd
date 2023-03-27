# Define que esse script é uma extensão da classe Sprite
extends Sprite
# Define uma variável que controla a velocidade de rotação "rotation_speed" como 0.3 graus por segundos
var rotation_speed = 0.3 


func _process(delta):
	# Rotaciona a sprite a uma velocidade determinada por rotation_speed multiplicada por delta, que é o tempo transcorrido desde a última chamada da função _process.
	rotate(rotation_speed * delta)
