extends Node

@onready var cash_rich_text_label_number: RichTextLabel = $"../PlayArea/PlayerStats/CashRichTextLabelNumber"
@onready var cred_rich_text_label_number: RichTextLabel = $"../PlayArea/PlayerStats/CredRichTextLabelNumber"
@onready var heat_rich_text_label_number: RichTextLabel = $"../PlayArea/PlayerStats/HeatRichTextLabelNumber"
@onready var game_state: Node = $"../GameState"

@export var cash:float = 0
@export var cred:float = 0
@export var heat:float = 0

var gun_unlocked: bool = false
var gun_purchased: bool = false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	check_for_unlocks()

func modify_cash(cash_change: float) -> void:
	cash += cash_change
	if cash < 0:
		cash = 0
	cash_rich_text_label_number.text = str(cash)
	
func modify_cred(cred_change: float) -> void:
	cred += cred_change
	if cred < 0:
		cred = 0
	cred_rich_text_label_number.text = str(cred)
	
func modify_heat(heat_change: float) -> void:
	heat += heat_change
	if heat < 0:
		heat = 0
	heat_rich_text_label_number.text = str(heat)
	
# Place where new unlocks will be added:
# gun_unlocked -> First time greater than 10 Cash -> purchase_gun_available()

func check_for_unlocks() -> void:
	if(!gun_unlocked):
		if cash >= 10:
			game_state.purchase_gun_available()
			gun_unlocked = true
			
	
