extends Node
@onready var player = $"../Player"

#Purchase Gun -> Mug Civilian
@onready var purchase_gun_button: Button = $"../PlayArea/MugCivilian/PurchaseGun"
@onready var mug_civilian_button: Button = $"../PlayArea/MugCivilian/MugCivilianButton"
@onready var mug_civilian_progress_bar: ProgressBar = $"../PlayArea/MugCivilian/MugCivilianProgressBar"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func purchase_gun_available() -> void:
	purchase_gun_button.visible = true
	
func purchase_gun_purchased() -> void:
	purchase_gun_button.visible = false
	mug_civilian_button.visible = true
	mug_civilian_progress_bar.visible = true

#PurchaseGun Button Pressed
func _on_purchase_gun_pressed() -> void:
	if player.cash_big.isGreaterThanOrEqualTo(Big.new(10)):
		purchase_gun_purchased()
		player.modify_cash(Big.new(-10))
		player.gun_purchased = true
