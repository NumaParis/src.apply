#= require 'jquery'
#= require 'bootstrap'

# ---
# jQuery to collapse the navbar on scroll
# ---

$(window).scroll ->
  if $('.navbar').offset().top > 65
    $('.navbar-fixed-top').addClass 'top-nav-collapse'
  else
    $('.navbar-fixed-top').removeClass 'top-nav-collapse'
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
        $('html,body').animate { scrollTop: target.offset().top-50 }, 200
        return false
    return
  return
# ---

$ ->
  
  $('.navbar-collapse ul li a').click ->
    $('.navbar-toggle:visible').click()
    return

  $('.step li:last-child').click ->
    $(this).toggleClass('more-info')
  return
return

# $('body').scrollspy target: '#has-scrollspy'