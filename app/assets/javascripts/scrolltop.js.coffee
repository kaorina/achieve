ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is (':visible')
    height = $(window).scrollTop()
    path = location.pathname
      
    if path == "/" 
      if height > 400
        element.fadeIn() if !visible
      else
        element.fadeOut()
    else if path == "/blogs"
      if height > 200
        element.fadeIn() if !visible
      else
       element.fadeOut()
      
  $(document).on 'click', '#page-top-btn', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')
      
$(document).ready(ready)
$(document).on('page:load', ready)