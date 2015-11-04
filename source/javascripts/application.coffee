# this script changes the stylesheet every hour.
#= require 'jquery'
#= require 'bootstrap'

# ---
# jQuery to collapse the navbar on scroll
# ---

$(window).scroll ->
  if $('.navbar').offset().top > 50
    $('.navbar-fixed-top').addClass 'top-custom'
  else
    $('.navbar-fixed-top').removeClass 'top-custom'
  return

# ---
# Closes the Responsive Menu on Menu Item Click
# ---

$('.navbar-collapse ul li a').click ->
  $('.navbar-toggle:visible').click()
  return

# ---
# this smoothscrolls the page
# ---

$ ->
  $('a[href*=#]:not([href=#])').click ->
    if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
      target = $(@hash)
      target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
      if target.length
        $('html,body').animate { scrollTop: target.offset().top }, 200
        return false
    return
  return
# ---