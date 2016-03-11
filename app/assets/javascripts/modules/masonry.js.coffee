$(document).on "ready page:load", ->
  $('.masonry-container').imagesLoaded ->
    $('.masonry-container').masonry
      itemSelector: '.box '
      columnWidth: (containerWidth) ->
        if $(window).width() >= 992
          containerWidth /3
