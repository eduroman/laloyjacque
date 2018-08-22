
app.forms =
	init: ->

		$("form").each ->

			form = $(this)

			# Autocomplete off fix

			form.find("[autocomplete='off']").each ->
				input = $(this)
				setTimeout ->
					input.val("")
					input.closest(".form__element").removeClass("form__element--filled")
				,500

			form.find("input, textarea").focus ->
				$(this).closest(".form__element").addClass("form__element--focused")

			form.find("input, textarea").blur ->

				formEl = $(this).closest(".form__element")

				formEl.removeClass("form__element--focused")

				if $(this).val()
					formEl.addClass("form__element--filled")
				else
					formEl.removeClass("form__element--filled")


