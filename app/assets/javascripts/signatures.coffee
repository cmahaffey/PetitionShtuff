# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $checkbox = $('.checkbox')
  $checkbox.on 'keypress', (event) ->
    console.log event
    if event.which == 13
      changeColor()
    return
  return
