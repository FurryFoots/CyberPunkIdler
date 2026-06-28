extends Node

@onready var cash_rich_text_label_number: RichTextLabel = $"../PlayArea/PlayerStats/CashRichTextLabelNumber"
@onready var cred_rich_text_label_number: RichTextLabel = $"../PlayArea/PlayerStats/CredRichTextLabelNumber"
@onready var heat_rich_text_label_number: RichTextLabel = $"../PlayArea/PlayerStats/HeatRichTextLabelNumber"
@onready var game_state: Node = $"../GameState"

var cash_big:Big
var cred_big:Big
var heat_big:Big

var gun_unlocked: bool = false
var gun_purchased: bool = false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	cash_big = Big.new(0)
	cred_big = Big.new(0)
	heat_big = Big.new(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	check_for_unlocks()
  
func modify_cash(cash_change: Big) -> void:
	cash_big = Big.add(cash_big, cash_change)
	if cash_big.isLessThanOrEqualTo(Big.new(0)):
		cash_big = Big.new(0)
	cash_rich_text_label_number.text = cash_big.toString()
	
func modify_cred(cred_change: Big) -> void:
	cred_big.plusEquals(cred_change)
	if cred_big.isLessThanOrEqualTo(Big.new(0)):
		cred_big = Big.new(0)
	cred_rich_text_label_number.text = cred_big.toString()
	
func modify_heat(heat_change: Big) -> void:
	heat_big.plusEquals(heat_change)
	if heat_big.isLessThanOrEqualTo(Big.new(0)):
		heat_big = Big.new(0)
	heat_rich_text_label_number.text = heat_big.toString()
	
# Place where new unlocks will be added:
# gun_unlocked -> First time greater than 10 Cash -> purchase_gun_available()

func check_for_unlocks() -> void:
	if(!gun_unlocked):
		if cash_big.isGreaterThanOrEqualTo(Big.new(10)):
			game_state.purchase_gun_available()
			gun_unlocked = true
			
	
