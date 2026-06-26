extends Node

@onready var cash_rich_text_label_number: RichTextLabel = $"../PlayArea/PlayerStats/CashRichTextLabelNumber"
@onready var cred_rich_text_label_number: RichTextLabel = $"../PlayArea/PlayerStats/CredRichTextLabelNumber"
@onready var heat_rich_text_label_number: RichTextLabel = $"../PlayArea/PlayerStats/HeatRichTextLabelNumber"

var Cash:float = 0
var Cred:float = 0
var Heat:float = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func modify_cash(cash_change: float) -> void:
	Cash += cash_change
	if Cash < 0:
		Cash = 0
	cash_rich_text_label_number.text = str(Cash)
	
func modify_cred(cred_change: float) -> void:
	Cred += cred_change
	if Cred < 0:
		Cred = 0
	cred_rich_text_label_number.text = str(Cred)
	
func modify_heat(heat_change: float) -> void:
	Heat += heat_change
	if Heat < 0:
		Heat = 0
	heat_rich_text_label_number.text = str(Heat)
