app.common =
	init: ->

		$('.header__ham').on 'click', (e) ->
			e.stopPropagation()
			$('.header__nav, .header__ham').toggleClass("on")
			#$('.header__ham').addClass("header__ham--close")
			if $(this).is('.header__ham--close')
				$('.header__ham').removeClass("header__ham--close")
			else
				$('.header__ham').addClass("header__ham--close")

		$('.header__nav').on 'click', (e) ->
			e.stopPropagation()

		$(document).on 'click', ->
			$('.header__nav').removeClass("on")

		$('.header__nav-close').click ->
			$('.header__nav').removeClass("on")

		#filters current

		$(".form__filter").on 'click', (e) ->
			if $(this).hasClass("current")
				$(this).removeClass("current")
				$(".form__checkbox").removeClass("form__checkbox--show")
			else
				$(".form__filter").removeClass("current")
				$(this).addClass("current")
				$(".form__checkbox").addClass("form__checkbox--show")

		#checkbox checked

		$(".checkbox").on 'click', (e) ->
			if $(this).is(':checked')
				$(this).parent().addClass("form__checkbox__item--selected")
			else
				$(this).parent().removeClass("form__checkbox__item--selected")


		$(window).on "scroll", ->

			if $(window).width() > 700

				window_height = $(window).height()
				scroll        = $(window).scrollTop()

				$("[data-sticky]").each ->
					el            = $(this)
					el_selector   = el.attr("data-sticky")
					el_top        = $(el_selector).offset().top
					el_height     = el.height()
					filters_top   = 0

					if window_height + scroll > el_top
						filters_top   = (el_top - window_height - scroll) + "px"

					el.css
						top: filters_top



		# Lazy images

		setInterval ->

			$("[data-img]:visible").each ->

				el = $(this)

				if !el.hasClass("loading") && !el.hasClass("loaded")

					if $(window).scrollTop() + $(window).height() > el.offset().top

						el.addClass("loading")
						img = new Image()
						img.src = el.data("img")
						img.onload = ->
							el.removeClass("loading")
							el.addClass("loaded")
							el[0].appendChild(img)

		,500



		