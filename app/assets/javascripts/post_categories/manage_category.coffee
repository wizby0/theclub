changeColor = ($object) -> 
	if $object.data("between") == true
		$object.css("background", "rgb(78, 179, 211)")
	else
		$object.css("background", "#FFFFFF")

putData = ->
	data = "["
	$('.time-slot-button').each ->
		if $(this).data("between") == true
			wday = $(this).data("wday")		
			dataString = '{' + 
												'"selected_categories_ids":"' + selected_categories_ids + '",' + 
												'},'
			data += dataString
	
	$('#form-manage-time-slot-slots-data').val(data.substring(0,data.length-1) + "]")

$('.category-slot-button').click ->
	$slot = $(this)
	$slot.data("between", if $slot.data("between") == true then false else true)
	changeColor($slot)

$('#form-manage-category-button').click ->
	putData()
	$('#form-manage-time-slot').submit()

$(document).ready ->
	$('.category-slot-button').each ->
		changeColor($(this))