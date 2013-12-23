$(document).on "click", ".shop_detail1", (e)->
	e.preventDefault()
	$("#show_product1_modal").removeClass("hide")
	$("#show_product1_modal").modal("show")
$(document).on "click", ".shop_detail2", (e)->
	e.preventDefault()
	$("#show_product2_modal").removeClass("hide")
	$("#show_product2_modal").modal("show")

$(document).on "click", ".shop_detail3", (e)->
	e.preventDefault()
	$("#show_product3_modal").removeClass("hide")
	$("#show_product3_modal").modal("show")