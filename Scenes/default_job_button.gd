extends Button
@onready var default_job_v_box: VBoxContainer = $"../../../ClickMissionsPanel/DefaultJobVBox"
@onready var click_missions_panel: ScrollContainer = $"../../../ClickMissionsPanel"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func show_only_specific_child(node_to_keep_visible: Node) -> void:
	for child in get_children():
		# This hides the child if it's not the one we want to keep
		child.visible = (child == node_to_keep_visible)

func _on_pressed() -> void:
	#var Parent = self.get_parent()
	for child in click_missions_panel.get_children():
		child.visible = false
	default_job_v_box.visible = true
