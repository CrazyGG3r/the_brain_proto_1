extends Node3D

@export var move_speed = 5.0
@export var turn_speed = 1.0

var coxa_min_rot = deg_to_rad(-90)
var coxa_max_rot = deg_to_rad(90)
var femur_min_rot = deg_to_rad(-90)
var femur_max_rot = deg_to_rad(90)
var tibia_min_rot = deg_to_rad(-90)
var tibia_max_rot = deg_to_rad(90)
@onready var legtest =$Armature/Skeleton3D/L_coxa_B_2

func _ready():
	pass

func _process(_delta):
	var target_rotation: float = deg_to_rad(90) * turn_speed / 100
	legtest.rotation_degrees.x = clamp(target_rotation, rad_to_deg(coxa_min_rot), rad_to_deg(coxa_max_rot))
