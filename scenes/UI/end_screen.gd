extends CanvasLayer


func _ready():
	get_tree().paused = true
	$%RestartButton.pressed.connect(on_restart_btn_pressed)
	$%QuitButton.pressed.connect(on_quit_btn_pressed)


func set_defeat():
	$%TitleLabel.text = "Defeat"
	$%DescLabel.text = "You Lost!"
	

func on_restart_btn_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main/main.tscn")
	
	
func on_quit_btn_pressed():
	get_tree().quit()
