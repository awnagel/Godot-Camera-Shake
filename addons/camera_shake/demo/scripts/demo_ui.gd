extends Control

var _demo_camera = null

onready var _progress_stress = $TextureProgress
onready var _progress_shake = $TextureProgress2

func _ready():
	_demo_camera = get_tree().get_root().get_child(0).get_node("Camera")

func _process(_delta):
	_progress_stress.value = _demo_camera.stress * 100.0
	_progress_shake.value = _demo_camera.shake * 100.0

func _on_Button_pressed():
	_demo_camera.add_stress(0.5)


func _on_Button2_pressed():
	_demo_camera.add_stress(0.25)
