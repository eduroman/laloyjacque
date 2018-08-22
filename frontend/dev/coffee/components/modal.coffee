
app.modal =
	init: ->

		$("[modal-open]").click (e) ->
			e.preventDefault()
			app.modal.open( $(this).attr("modal-open") )

		$(".modal__close").click ->
			app.modal.close $(this).closest(".modal")	

	open: (elementclass) ->
		console.log elementclass
		$(elementclass).addClass("modal--in")

	close: (modal=false) ->

		modal = $(".modal") if !modal

		modal
			.removeClass("modal--in")
			.addClass("modal--out")

		setTimeout ->
			modal.removeClass("modal--out")
		,200

