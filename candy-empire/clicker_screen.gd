extends Control

@onready var NumofCandies: Label = $CandyNumber
@onready var NumofPurses: Label = $VBoxContainer/Container/Purses/NumOfPurse
@onready var CostOfPurses: Label = $VBoxContainer/Container/Purses/CostForPurses

@onready var CandyButton: AnimationPlayer = $CandyClicker/AnimationPlayer
@onready var clicksound: AudioStreamPlayer2D = $CandyClicker/AudioStreamPlayer2D

@onready var imageofgrandmapurse: TextureRect = $VScrollBar/VBoxContainer/GrandmasPurseImage
@onready var imageofstand: TextureRect = $VScrollBar/VBoxContainer/CandyStandImage
@onready var conveniencestoreimage: TextureRect = $VScrollBar/VBoxContainer/ConvenienceStoreImage
@onready var candystoreimage: TextureRect = $VScrollBar/VBoxContainer/CandyStoreImage
@onready var factoryimage: TextureRect = $VScrollBar/VBoxContainer/CandyFactoryImage
@onready var companyimage: TextureRect = $VScrollBar/VBoxContainer/CandyCompanyImage
@onready var monopolyimage: TextureRect = $VScrollBar/VBoxContainer/MonopolyImage
@onready var intergalacticimage: TextureRect = $VScrollBar/VBoxContainer/IntergalacticImage
@onready var universalimage: TextureRect = $VScrollBar/VBoxContainer/UniversalImage
@onready var multiversalimage: TextureRect = $VScrollBar/VBoxContainer/MultiversalImage
@onready var celestialimage: TextureRect = $VScrollBar/VBoxContainer/CelestialImage

@onready var grandmapursebutton: Button = $VBoxContainer/Container/Purses/GrandmasPurse
@onready var standbutton: Button = $VBoxContainer/Container/CandyStands/CandyStand
@onready var costforstand: Label = $VBoxContainer/Container/CandyStands/CostForCandyStand
@onready var amountofstandslabel: Label = $VBoxContainer/Container/CandyStands/AmountofCandyStands
@onready var amountofconvenientlabel: Label = $VBoxContainer/Container/ConvenientStore/NumOfStores
@onready var costforstore: Label = $VBoxContainer/Container/ConvenientStore/CostForStore
@onready var convenientstorebutton: Button = $VBoxContainer/Container/ConvenientStore/ConvenientStore
@onready var costforcandystore: Label = $VBoxContainer/Container/CandyStore/CostForCandyStore
@onready var candystorebutton: Button = $VBoxContainer/Container/CandyStore/CandyStore
@onready var amountofcandystorelabel: Label = $VBoxContainer/Container/CandyStore/NumOfCandyStores
@onready var factorybutton: Button = $VBoxContainer/Container/CandyFactory/CandyFactory
@onready var factorycostlabel: Label = $VBoxContainer/Container/CandyFactory/CostForFactory
@onready var NumOfFactory: Label = $VBoxContainer/Container/CandyFactory/NumOfFactory
@onready var companycostlabel: Label = $VBoxContainer/Container/CandyCompany/CostForCompany
@onready var companybutton: Button = $VBoxContainer/Container/CandyCompany/Company
@onready var numofcompany: Label = $VBoxContainer/Container/CandyCompany/NumOfCompany
@onready var monopolycostlabel: Label = $VBoxContainer/Container/CandyMonopoly/CostForMonopoly
@onready var monopolybutton: Button = $VBoxContainer/Container/CandyMonopoly/CandyMonopolyButton
@onready var monopolynumlabel: Label = $VBoxContainer/Container/CandyMonopoly/NumOfMonopoly
@onready var intergalacticbutton: Button = $VBoxContainer/Container/IntergalacticStore/IntergalacticStoreButton
@onready var intergalacticcostlabel: Label = $VBoxContainer/Container/IntergalacticStore/CostForIntergalacticStore
@onready var amountofintergalacticlabel: Label = $VBoxContainer/Container/IntergalacticStore/NumOfIntergalactic
@onready var universalbutton: Button = $VBoxContainer/Container/UniversalStore/UniversalStoreButton
@onready var universalcostlabel: Label = $VBoxContainer/Container/UniversalStore/CostForUniversalStore
@onready var amountofuniversallabel: Label = $VBoxContainer/Container/UniversalStore/NumOfUniversalStore
@onready var multiversalbutton: Button = $VBoxContainer/Container/MultiversalStore/MultiversalStoreButton
@onready var multiversalcostlabel: Label = $VBoxContainer/Container/MultiversalStore/CostForMultiversalStore
@onready var numofmultiversallabel: Label = $VBoxContainer/Container/MultiversalStore/NumOfMultiversalStore
@onready var celestialbutton: Button = $VBoxContainer/Container/CelestialStore/CelestialStoreButton
@onready var celestialcostlabel: Label = $VBoxContainer/Container/CelestialStore/CostForCelestialStore
@onready var numofcelestiallabel: Label = $VBoxContainer/Container/CelestialStore/NumOfCelestialStore

@onready var OptionsMenu: TextureRect = $OptionsScreen
@onready var ExitGame: Button = $OptionsScreen/ExitGame
@onready var ExitMenu: Button = $OptionsScreen/ExitMenu
@onready var ResetButton: Button = $OptionsScreen/Reset
@onready var YesButton: Button = $OptionsScreen/Reset/TextureRect/yes
@onready var NoButton: Button = $OptionsScreen/Reset/TextureRect/no
@onready var ResetScreen: TextureRect = $OptionsScreen/Reset/ResetScreen
@onready var GameMusic: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var GameMusicSlider: HSlider = $OptionsScreen/HSlider
@onready var StatScreen: TextureRect = $StatScreen
@onready var CPSLabel: Label = $StatScreen/CandyPerSecond
@onready var clicksthissessionlabel = $StatScreen/ClicksThisSession
@onready var totalclickslabel = $StatScreen/TotalClicks

const save_path = "user://userdata.save"
var candy = 0
var stand = 0
var amountperclick = 1
var amountofpurses = 0
var amountofstands = 0
var amountofcandiesperstand = 100
var cost = 10
var standcost = 1000
var amountofcandiesperpurse = 2
var volume = 20
var convenientcost = 100000
var amountofconvenient = 0
var amountofcandyperconvenient = 10000
var candystorecost = 1000000
var amountofcandystore = 0
var amountofcandypercandystore = 100000
var amountofcandyfactory = 0
var candyfactorycost = 100000000
var amountofcandyperfactory = 10000000
var amountofcompany = 0
var companycost = 1000000000
var amountofcandypercompany = 100000000
var amountofmonopoly = 0
var monopolycost = 100000000000
var candypermonopoly = 10000000000
var intergalacticcost = 1_000_000_000_000
var amountofintergalactic = 0
var candyperintergalactic = 100_000_000_000
var universalcost = 100_000_000_000_000
var amountofuniversal = 0
var candyperuniversal = 10_000_000_000_000
var multiversalcost = 1_000_000_000_000_000
var amountofmultiversal = 0
var candypermultiversal = 100_000_000_000_000
var celestialcost = 100_000_000_000_000_000
var amountofcelestial = 0
var candypercelestial = 1_000_000_000_000_000
var totalclicks = 0
var clicksthissession = 0
var ad_timer_counter = 0

func _ready() -> void:
	if ClassDB.class_exists("CrazyGames") or Engine.has_singleton("CrazyGames"):
		await CrazyGames.is_initialised_async()
	load_data()
	update_ui()
	$AudioStreamPlayer2D.play()

func save_data():
	var data = {
		"candy": candy,
		"amountofpurses": amountofpurses,
		"cost": cost,
		"amountperclick": amountperclick,
		"volume": volume,
		"amountofstands": amountofstands,
		"standcost": standcost,
		"amountofconvenient": amountofconvenient,
		"convenientcost": convenientcost,
		"candystorecost": candystorecost,
		"amountofcandystore": amountofcandystore,
		"amountofcandyfactory": amountofcandyfactory,
		"candyfactorycost": candyfactorycost,
		"amountofcompany": amountofcompany,
		"companycost": companycost,
		"amountofmonopoly": amountofmonopoly,
		"monopolycost": monopolycost,
		"intergalacticcost": intergalacticcost,
		"amountofintergalactic": amountofintergalactic,
		"universalcost": universalcost,
		"amountofuniversal": amountofuniversal,
		"amountofmultiversal": amountofmultiversal,
		"multiversalcost": multiversalcost,
		"amountofcelestial": amountofcelestial,
		"celestialcost": celestialcost,
		"totalclicks": totalclicks,
		"clicksthissession": clicksthissession
	}
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(data)
	file.close()
func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		var data = file.get_var()
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			candy = data.get("candy", 0)
			amountofpurses = data.get("amountofpurses", 0)
			cost = data.get("cost", 10)
			amountperclick = data.get("amountperclick", 1)
			volume = data.get("volume", 20)
			amountofstands = data.get("amountofstands", 0)
			standcost = data.get("standcost", 1000)
			amountofconvenient = data.get("amountofconvenient", 0)
			convenientcost = data.get("convenientcost", 100000)
			candystorecost = data.get("candystorecost", 1000000)
			amountofcandystore = data.get("amountofcandystore", 0)
			amountofcandyfactory = data.get("amountofcandyfactory", 0)
			candyfactorycost = data.get("candyfactorycost", 100000000)
			amountofcompany = data.get("amountofcompany", 0)
			companycost = data.get("companycost", 1000000000)
			monopolycost = data.get("monopolycost", 100000000000)
			amountofmonopoly = data.get("amountofmonopoly", 0)
			intergalacticcost = data.get("intergalacticcost", 1_000_000_000_000)
			amountofintergalactic = data.get("amountofintergalactic", 0)
			amountofuniversal = data.get("amountofuniversal", 0)
			universalcost = data.get("universalcost", 100_000_000_000_000)
			amountofmultiversal = data.get("amountofmultiversal", 0)
			multiversalcost = data.get("multiversalcost", 1_000_000_000_000_000)
			amountofcelestial = data.get("amountofcelestial", 0)
			celestialcost = data.get("celestialcost", 100_000_000_000_000_000)
			totalclicks = data.get("totalclicks", 0)
			clicksthissession = data.get("clicksthissession", 0)
	else:
		save_data()

func _on_candy_clicker_pressed() -> void:
	candy += amountperclick
	clicksound.play()
	CandyButton.play("new_animation")
	clicksthissession += 1
	totalclicks += 1
	update_ui()
	save_data()

func _on_grandmas_purse_pressed() -> void:
	if candy >= cost:
		candy -= cost
		amountofpurses += 1
		cost += cost

		update_ui()
		save_data()

func update_ui() -> void:
	NumofCandies.text = format_number(candy) + " Candies"
	
	if candy >= 1_000_000_000_000_000:
		NumofCandies.scale.x = 0.70
		NumofCandies.scale.y = 0.70
		NumofCandies.position.x = 40.0  
		NumofCandies.position.y = 24.0
	elif candy >= 10000:
		NumofCandies.scale.x = 0.80
		NumofCandies.scale.y = 0.80
		NumofCandies.position.x = 65.0   
		NumofCandies.position.y = 24.0
	else:
		NumofCandies.scale.x = 0.90
		NumofCandies.scale.y = 0.90
		NumofCandies.position.x = 19.0  
		NumofCandies.position.y = 24.0
	CostOfPurses.text = "Cost = " + format_number(cost)
	costforstand.text = "Cost = " + format_number(standcost)
	costforstore.text = "Cost = " + format_number(convenientcost)
	costforcandystore.text = "Cost = " + format_number(candystorecost)
	factorycostlabel.text = "Cost = " + format_number(candyfactorycost)
	companycostlabel.text = "Cost = " + format_number(companycost)
	monopolycostlabel.text = "Cost = " + format_number(monopolycost)
	intergalacticcostlabel.text = "Cost = " + format_number(intergalacticcost)
	universalcostlabel.text = "Cost = " + format_number(universalcost)
	multiversalcostlabel.text = "Cost = " + format_number(multiversalcost)
	celestialcostlabel.text = "Cost = " + format_number(celestialcost)
	imageofgrandmapurse.visible = amountofpurses > 0
	if candy >= cost:
		grandmapursebutton.disabled = false
	else:
		grandmapursebutton.disabled = true
	NumofPurses.text = "Amount: " + format_number(amountofpurses)
	GameMusicSlider.value = volume
	GameMusic.volume_db = volume
	if candy >= standcost:
		standbutton.disabled = false
	else:
		standbutton.disabled = true
	amountofstandslabel.text = "Amount: " + format_number(amountofstands)
	if candy >= convenientcost:
		convenientstorebutton.disabled = false
	else:
		convenientstorebutton.disabled = true
	amountofconvenientlabel.text = "Amount: " + format_number(amountofconvenient)
	if candy >= candystorecost:
		candystorebutton.disabled = false
	else:
		candystorebutton.disabled = true
	amountofcandystorelabel.text = "Amount: " + format_number(amountofcandystore)
	if candy >= candyfactorycost:
		factorybutton.disabled = false
	else:
		factorybutton.disabled = true
	NumOfFactory.text = "Amount: " + format_number(amountofcandyfactory)
	if candy >= companycost:
		companybutton.disabled = false
	else:
		companybutton.disabled = true
	numofcompany.text = "Amount: " + format_number(amountofcompany)
	if candy >= monopolycost:
		monopolybutton.disabled = false
	else: 
		monopolybutton.disabled = true
	monopolynumlabel.text = "Amount: " + format_number(amountofmonopoly)
	if candy >= intergalacticcost:
		intergalacticbutton.disabled = false
	else:
		intergalacticbutton.disabled = true
	amountofintergalacticlabel.text = "Amount: " + format_number(amountofintergalactic)
	if candy >= universalcost:
		universalbutton.disabled = false
	else:
		universalbutton.disabled = true
	amountofuniversallabel.text = "Amount: " + format_number(amountofuniversal)
	if candy >= multiversalcost:
		multiversalbutton.disabled = false
	else:
		multiversalbutton.disabled = true
	numofmultiversallabel.text = "Amount: " + format_number(amountofmultiversal)
	if candy >= celestialcost:
		celestialbutton.disabled = false
	else:
		celestialbutton.disabled = true
	numofcelestiallabel.text = "Amount: " + format_number(amountofcelestial)
	clicksthissessionlabel.text = "Clicks This Session: " + format_number(clicksthissession)
	totalclickslabel.text = "Total Clicks: " + format_number(totalclicks)
	if amountofstands > 0:
		imageofstand.visible = true
	else:
		imageofstand.visible = false
	if amountofconvenient > 0:
		conveniencestoreimage.visible = true
	else: 
		conveniencestoreimage.visible = false
	if amountofcandystore > 0:
		candystoreimage.visible = true
	else:
		candystoreimage.visible = false
	if amountofcandyfactory > 0:
		factoryimage.visible = true
	else:
		factoryimage.visible = false
	if amountofcompany > 0:
		companyimage.visible = true
	else:
		companyimage.visible = false
	if amountofmonopoly > 0:
		monopolyimage.visible = true
	else:
		monopolyimage.visible = false
	if amountofintergalactic > 0:
		intergalacticimage.visible = true
	else:
		intergalacticimage.visible = false
	if amountofuniversal > 0:
		universalimage.visible = true
	else:
		universalimage.visible = false
	if amountofmultiversal > 0:
		multiversalimage.visible = true
	else:
		multiversalimage.visible = false
	if amountofcelestial > 0:
		celestialimage.visible = true
	else:
		celestialimage.visible = false
func _on_timer_timeout() -> void:
	candy += amountofcandiesperpurse * amountofpurses
	candy += amountofcandiesperstand * amountofstands
	candy += amountofcandyperconvenient * amountofconvenient
	candy += amountofcandypercandystore * amountofcandystore
	candy += amountofcandyperfactory * amountofcandyfactory
	candy += amountofcandypercompany * amountofcompany
	candy += candypermonopoly * amountofmonopoly
	candy += candyperintergalactic * amountofintergalactic
	candy += candyperuniversal * amountofuniversal
	candy += candypermultiversal * amountofmultiversal
	candy += candypercelestial * amountofcelestial
	if ad_timer_counter >= 300:
		ad_timer_counter = 0
		trigger_commercial_ad()
	update_ui()
	save_data()



func _on_reset_pressed() -> void:
	ResetScreen.visible = true


func format_number(num: float) -> String:
	if num < 1000:
		return str(int(num))

	var suffixes = ["K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No"]

	var index = -1

	while num >= 1000 and index < suffixes.size() - 1:
		num /= 1000.0
		index += 1

	return "%.2f%s" % [num, suffixes[index]]


func _on_button_pressed() -> void:
	save_data()
	update_ui()
	get_tree().quit()


func _on_exit_menu_pressed() -> void:
	OptionsMenu.visible = false
	ExitGame.visible = false
	ExitGame.disabled = true
	ExitMenu.visible = false
	ExitMenu.disabled = true
	ResetButton.visible = false
	ResetButton.disabled = true

func _on_options_pressed() -> void:
	OptionsMenu.visible = true
	ExitGame.visible = true
	ExitGame.disabled = false
	ExitMenu.visible = true
	ExitMenu.disabled = false
	ResetButton.visible = true
	ResetButton.disabled = false
	


func _on_no_pressed() -> void:
	ResetScreen.visible = false


func _on_yes_pressed() -> void:
	candy = 0
	amountofpurses = 0
	cost = 10
	amountofstands = 0
	standcost = 1000
	amountofconvenient = 0
	convenientcost = 100000
	amountofcandystore = 0
	candystorecost = 1000000
	amountofcandyfactory = 0
	candyfactorycost = 100000000
	companycost = 1000000000
	amountofcompany = 0
	amountofmonopoly = 0
	monopolycost = 100000000000
	intergalacticcost = 1_000_000_000_000
	amountofintergalactic = 0
	universalcost = 100_000_000_000_000
	amountofuniversal = 0
	multiversalcost = 1_000_000_000_000_000
	amountofmultiversal = 0
	celestialcost = 100_000_000_000_000_000
	amountofcelestial = 0
	clicksthissession = 0
	update_ui()
	save_data()
	ResetScreen.visible = false
	OptionsMenu.visible = false
	ExitGame.visible = true
	ExitGame.disabled = false
	ExitMenu.visible = true
	ExitMenu.disabled = false
	ResetButton.visible = true
	ResetButton.disabled = false


func _on_h_slider_value_changed(value: float) -> void:
	volume = value
	GameMusic.volume_db = volume
	value = volume
	save_data()


func _on_candy_stand_pressed() -> void:
	if candy >= standcost:
		candy -= standcost
		amountofstands += 1
		standcost += standcost

		update_ui()
		save_data()


func _on_convenient_store_pressed() -> void:
	if candy >= convenientcost:
		candy -= convenientcost
		amountofconvenient += 1
		convenientcost += convenientcost

		update_ui()
		save_data()


func _on_candy_store_pressed() -> void:
	if candy >= candystorecost:
		candy -= candystorecost
		amountofcandystore += 1
		candystorecost += candystorecost

		update_ui()
		save_data()


func _on_candy_factory_pressed() -> void:
	if candy >= candyfactorycost:
		candy -= candyfactorycost
		amountofcandyfactory += 1
		candyfactorycost += candyfactorycost

		update_ui()
		save_data()


func _on_company_pressed() -> void:
	if candy >= companycost:
		candy -= companycost
		amountofcompany += 1
		companycost += companycost

		update_ui()
		save_data()


func _on_candy_monopoly_button_pressed() -> void:
	if candy >= monopolycost:
		candy -= monopolycost
		amountofmonopoly += 1
		monopolycost += monopolycost

		update_ui()
		save_data()


func _on_intergalactic_store_button_pressed() -> void:
	if candy >= intergalacticcost:
		candy -= intergalacticcost
		amountofintergalactic += 1
		intergalacticcost += intergalacticcost

		update_ui()
		save_data()


func _on_universal_store_button_pressed() -> void:
	if candy >= universalcost:
		candy -= universalcost
		amountofuniversal += 1
		universalcost += universalcost

		update_ui()
		save_data()


func _on_multiversal_store_button_pressed() -> void:
	if candy >= multiversalcost:
		candy -= multiversalcost
		amountofmultiversal += 1
		multiversalcost += multiversalcost

		update_ui()
		save_data()


func _on_celestial_store_button_pressed() -> void:
	if candy >= celestialcost:
		candy -= celestialcost
		amountofcelestial += 1
		celestialcost += celestialcost

		update_ui()
		save_data()
func get_total_cps() -> float:
	var total_cps = (
		(amountofcandiesperpurse * amountofpurses) +
		(amountofcandiesperstand * amountofstands) +
		(amountofcandyperconvenient * amountofconvenient) +
		(amountofcandypercandystore * amountofcandystore) +
		(amountofcandyfactory * amountofcandyperfactory) +
		(amountofcompany * amountofcompany) +
		(candypermonopoly * amountofmonopoly) +
		(candyperintergalactic * amountofintergalactic) +
		(candyperuniversal * amountofuniversal) +
		(candypermultiversal * amountofmultiversal) +
		(candypercelestial * amountofcelestial)
	)
	return total_cps


func _on_stats_pressed() -> void:
	StatScreen.visible = true
	CPSLabel.text = "Candy Per Second: " + format_number(get_total_cps())


func _on_exit_stats_menu_pressed() -> void:
	StatScreen.visible = false
func trigger_commercial_ad() -> void:
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), true)
	Engine.time_scale = 0.0 
	await CrazyGames.Ad.request_ad_async("midgame")
	Engine.time_scale = 1.0
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), false)
