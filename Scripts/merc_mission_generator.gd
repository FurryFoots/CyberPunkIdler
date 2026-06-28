extends Node

var rng := RandomNumberGenerator.new()

var actions := [
	"Extract", "Intercept", "Sabotage", "Escort", "Recover",
	"Silence", "Trace", "Steal", "Protect", "Erase",
	"Hijack", "Expose", "Plant", "Smuggle", "Neutralize"
]

var targets := [
	"the Datacore", "a Rogue AI", "the Witness", "Corporate Assets",
	"the Black Box", "the Prototype", "the Executive", "the Courier",
	"the Memory Shard", "the Signal", "the Augment Dealer",
	"the Ghost Server", "the Biochip", "the Drone Convoy"
]

var locations := [
	"in Neon Row", "beneath Sector 9", "at Chrome Harbor",
	"inside the Spire", "under the Red District",
	"near the Orbital Rail", "in the Slums",
	"at the Synth Market", "below the Arcology",
	"inside the Dead Grid"
]

var modifiers := [
	"Quietly", "Before Dawn", "No Survivors", "Off the Books",
	"Without a Trace", "For the Highest Bidder", "Against Protocol",
	"Under Corporate Watch", "During the Blackout", "Before Extraction"
]

func _ready() -> void:
	rng.randomize()

	for i in range(10):
		print(generate_merc_job_name())


func generate_merc_job_name() -> String:
	var pattern := rng.randi_range(0, 4)

	match pattern:
		0:
			return "%s %s %s" % [
				pick(actions),
				pick(targets),
				pick(locations)
			]
		1:
			return "%s: %s" % [
				pick(locations).capitalize(),
				pick(modifiers)
			]
		2:
			return "%s %s" % [
				pick(actions),
				pick(targets)
			]
		3:
			return "%s %s — %s" % [
				pick(actions),
				pick(targets),
				pick(modifiers)
			]
		_:
			return "%s %s %s — %s" % [
				pick(actions),
				pick(targets),
				pick(locations),
				pick(modifiers)
			]


func pick(list: Array) -> String:
	return list[rng.randi_range(0, list.size() - 1)]
