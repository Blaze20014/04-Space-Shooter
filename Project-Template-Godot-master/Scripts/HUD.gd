extends Node2D

func _ready():
	pass 


func _on_Player_health_changed():
	var h = get_node("/root/Game/Ship/Player").health
	$Health.text = "HEALTH: " + str(h)

func _on_Player_score_changed():
	var s = get_node("/root/Game/Ship/Player").score
	$Score.text = "SCORE: " + str(s)
