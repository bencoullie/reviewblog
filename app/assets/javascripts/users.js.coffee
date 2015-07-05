# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

  $('.choose').click ->
    $('.choose').addClass 'active'
    $('.choose > .usericon').addClass 'active'
    $('.pay').removeClass 'active'
    $('.wrap').removeClass 'active'
    $('.ship').removeClass 'active'
    $('.pay > .usericon').removeClass 'active'
    $('.wrap > .usericon').removeClass 'active'
    $('.ship > .usericon').removeClass 'active'
    $('#line').addClass 'one'
    $('#line').removeClass 'two'
    $('#line').removeClass 'three'
    $('#line').removeClass 'four'
    return
  $('.pay').click ->
    $('.pay').addClass 'active'
    $('.pay > .usericon').addClass 'active'
    $('.choose').removeClass 'active'
    $('.wrap').removeClass 'active'
    $('.ship').removeClass 'active'
    $('.choose > .usericon').removeClass 'active'
    $('.wrap > .usericon').removeClass 'active'
    $('.ship > .usericon').removeClass 'active'
    $('#line').addClass 'two'
    $('#line').removeClass 'one'
    $('#line').removeClass 'three'
    $('#line').removeClass 'four'
    return
  $('.wrap').click ->
    $('.wrap').addClass 'active'
    $('.wrap > .usericon').addClass 'active'
    $('.pay').removeClass 'active'
    $('.choose').removeClass 'active'
    $('.ship').removeClass 'active'
    $('.pay > .usericon').removeClass 'active'
    $('.choose > .usericon').removeClass 'active'
    $('.ship > .usericon').removeClass 'active'
    $('#line').addClass 'three'
    $('#line').removeClass 'two'
    $('#line').removeClass 'one'
    $('#line').removeClass 'four'
    return
  $('.ship').click ->
    $('.ship').addClass 'active'
    $('.ship > .usericon').addClass 'active'
    $('.pay').removeClass 'active'
    $('.wrap').removeClass 'active'
    $('.choose').removeClass 'active'
    $('.pay > .usericon').removeClass 'active'
    $('.wrap > .usericon').removeClass 'active'
    $('.choose > .usericon').removeClass 'active'
    $('#line').addClass 'four'
    $('#line').removeClass 'two'
    $('#line').removeClass 'three'
    $('#line').removeClass 'one'
    return
  $('.choose').click ->
    $('#first').addClass 'active'
    $('#second').removeClass 'active'
    $('#third').removeClass 'active'
    $('#fourth').removeClass 'active'
    return
  $('.pay').click ->
    $('#first').removeClass 'active'
    $('#second').addClass 'active'
    $('#third').removeClass 'active'
    $('#fourth').removeClass 'active'
    return
  $('.wrap').click ->
    $('#first').removeClass 'active'
    $('#second').removeClass 'active'
    $('#third').addClass 'active'
    $('#fourth').removeClass 'active'
    return
  $('.ship').click ->
    $('#first').removeClass 'active'
    $('#second').removeClass 'active'
    $('#third').removeClass 'active'
    $('#fourth').addClass 'active'
    return

$(document).ready(ready)
$(document).on('page:load', ready)
