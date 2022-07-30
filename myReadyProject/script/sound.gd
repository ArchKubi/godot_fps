extends Control


var nsv = AudioServer.get_bus_index("Master")
var effectVolume = AudioServer.get_bus_index("Effect")
var musicVolume = AudioServer.get_bus_index("Music")

func _on_SoundGV_value_changed(value):
	AudioServer.set_bus_volume_db(nsv, value)
	if value == -30:
		AudioServer.set_bus_mute(nsv, true)
	else:
		AudioServer.set_bus_mute(nsv, false)


func _on_effectSound_value_changed(value):
	AudioServer.set_bus_volume_db(effectVolume, value)
	if value == -30:
		AudioServer.set_bus_mute(effectVolume, true)
	else:
		AudioServer.set_bus_mute(effectVolume, false)


func _on_musicSound_value_changed(value):
	AudioServer.set_bus_volume_db(musicVolume, value)
	if value == -30:
		AudioServer.set_bus_mute(musicVolume, true)
	else:
		AudioServer.set_bus_mute(musicVolume, false)
