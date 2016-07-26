ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop()
    path = location.pathname
    
    # Topページの場合: height > 400で表示させる
    if path == "/"
      if height > 400
        element.fadeIn() if !visible
      else
        element.fadeOut()
    # Blogの場合: height > 200で表示させる  
    else if path == "/blogs"
      if height > 200
        element.fadeIn() if !visible
      else
        element.fadeOut()
      
      
  $(document).on 'click', '#move-page-top', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')

$(document).ready(ready)
$(document).on('page:load', ready)