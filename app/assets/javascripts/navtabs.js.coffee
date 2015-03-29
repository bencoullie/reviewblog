$ ->
  # $('.tabs li').click ->
  #   $('.tabs li').each ->
  #     $(this).removeClass( 'tab-current' )
  #   $(this).addClass( "tab-current" )

  # do (window) ->
  #
  #   extend = (a, b) ->
  #     for key of b
  #       if b.hasOwnProperty(key)
  #         a[key] = b[key]
  #     a
  #
  #   CBPFWTabs = (el, options) ->
  #     @el = el
  #     @options = extend({}, @options)
  #     extend @options, options
  #     @_init()
  #     return
  #
  #   'use strict'
  #   CBPFWTabs::options = start: 0
  #
  #   CBPFWTabs::_init = ->
  #     # tabs elems
  #     @tabs = [].slice.call(@el.querySelectorAll('nav > ul > li'))
  #     # content items
  #     @items = [].slice.call(@el.querySelectorAll('.content-wrap > section'))
  #     # current index
  #     @current = -1
  #     # show current content item
  #     @_show()
  #     # init events
  #     @_initEvents()
  #     return
  #
  #   CBPFWTabs::_initEvents = ->
  #     self = this
  #     @tabs.forEach (tab, idx) ->
  #       tab.addEventListener 'click', (ev) ->
  #         ev.preventDefault()
  #         self._show idx
  #         return
  #       return
  #     return
  #
  #   CBPFWTabs::_show = (idx) ->
  #     if @current >= 0
  #       @tabs[@current].className = @items[@current].className = ''
  #     # change current
  #     @current = if idx != undefined then idx else if @options.start >= 0 and @options.start < @items.length then @options.start else 0
  #     @tabs[@current].className = 'tab-current'
  #     @items[@current].className = 'content-current'
  #     return
  #
  #   # add to global namespace
  #   window.CBPFWTabs = CBPFWTabs
  #   return
