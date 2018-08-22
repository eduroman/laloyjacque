
app.tabs =

	init: ->

		$(".section__tabs").each ->

			tab = $(this)

			if !tab.find(".tab--active").length
				app.tabs.open(tab,0)

			tab.find(".section__tabs__header .section__tab").click (e) ->
				e.preventDefault()
				index = $(this).index()
				app.tabs.open tab,index

	open: (tab,index) ->

		tab.find(".section__tabs__header .section__tab").removeClass("tab--active")
		tab.find(".section__tabs__header .section__tab").eq(index).addClass("tab--active")

		tab.find(".section__tabs__body .section__tab").removeClass("tab--active")
		tab.find(".section__tabs__body .section__tab").eq(index).addClass("tab--active")

		if app.scroll
			app.scroll.dscroll()



app.tabs2 =

	init: ->

		$(".tabs").each ->

			tab = $(this)

			if !tab.find(".tab--active").length
				app.tabs2.open(tab,0)

			tab.find(".tabs__header .tab").click (e) ->
				e.preventDefault()
				index = $(this).index()
				app.tabs2.open tab,index

	open: (tab,index) ->

		tab.find(".tabs__header .tab").removeClass("tab--active")
		tab.find(".tabs__header .tab").eq(index).addClass("tab--active")

		tab.find(".tabs__body .tab").removeClass("tab--active")
		tab.find(".tabs__body .tab").eq(index).addClass("tab--active")

		if app.scroll
			app.scroll.dscroll()

