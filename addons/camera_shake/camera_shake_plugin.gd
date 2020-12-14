tool
extends EditorPlugin

func _enter_tree():
	var gui = get_editor_interface().get_base_control()
	var camera_icon = gui.get_icon("Camera", "EditorIcons")
	
	add_custom_type(
		"ShakeCamera", "Camera",
		preload("res://addons/camera_shake/camera_scripts/shake_camera.gd"),
		camera_icon
	)
	add_custom_type(
		"ShakeCamera2D", "Camera2D",
		preload("res://addons/camera_shake/camera_scripts/shake_camera_2D.gd"),
		camera_icon
	)

func _exit_tree():
	remove_custom_type("ShakeCamera")
	remove_custom_type("ShakeCamera2D")
