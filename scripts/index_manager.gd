extends Node2D

var basic_combat_scene = preload("res://scenes/combat.tscn")

var basic_bug = preload("res://scenes/bug.tscn")


var CURRENT_PARTY = []


# Called when the node enters the scene tree for the first time.
func _ready():
	var test_ant = basic_bug.instantiate()
	test_ant.speed = 1
	CURRENT_PARTY.append(test_ant)
	#print("Asdsdsds")
	var current_combat = basic_combat_scene.instantiate()
	var scene_root = get_node("/root/Index/")
	scene_root.add_child(current_combat)
	
	
	current_combat.spawnPlayerTeam(CURRENT_PARTY)
	
	var evil_ant = basic_bug.instantiate()
	evil_ant.speed = 2
	current_combat.spawnEnemyTeam([evil_ant])
	current_combat.initCombatQueue()
	#print("B")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass
