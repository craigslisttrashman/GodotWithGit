extends Area2D

var lifetime = 1

func _process(delta):
	move_local_x(delta*400)
	lifetime -= delta
	if (lifetime <= 0):
		queue_free()
	


func _on_Bullet_area_entered(area):
	queue_free()
	area.queue_free()
