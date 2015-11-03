# PROGRESS BAR
NProgress.configure({
  showSpinner: false,
  ease: 'ease',
  speed: 500
});

# MASONRY
ready = ->
  $('.grid').masonry
    itemSelector: '.grid-item'
    columnWidth: 385
    gutterWidth: 20

$(document).ready(ready)
$(document).on('page:load', ready)
