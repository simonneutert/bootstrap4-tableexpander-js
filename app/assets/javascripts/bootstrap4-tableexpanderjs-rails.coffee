$(document).on 'turbolinks:load', ->
  return unless $(".table-expandable").length > 0

  moreText = (self) ->
    if $(self).data("table-expandable-more") then $(self).data("table-expandable-more") else "mehr anzeigen"
  lessText = (self) ->
    if $(self).data("table-expandable-less") then $(self).data("table-expandable-less") else "weniger anzeigen"
  checkButtonStyles = (self) ->
    if $(self).attr("data-table-expandable-showmore-button") then $(self).data("table-expandable-showmore-button") else "badge badge-success"

  $(".table-expandable").each ->
    more_text = moreText($(@))
    less_text = lessText($(@))
    buttonType = checkButtonStyles($(@))
    showItems = if $(@).data("table-expandable-items") >= 1 then $(@).data("table-expandable-items") else 5
    $(@).find("tr:lt(#{showItems})").removeClass("hidden-xl-down")
    if $(@).find("tr").length > showItems
      $(@).append '<span class="' + buttonType + ' showmore">' + more_text + '</span>'

  $(".showmore").on 'click', ->
    more_text = moreText($(@))
    less_text = lessText($(@))
    buttonType = checkButtonStyles($(@))
    showItems = if $(@).data("table-expandable-items") >= 1 then $(@).data("table-expandable-items") - 1 else 5 # shows "n-1" rows
    $(@).parent().find("tr:gt(#{showItems - 1})").toggleClass("hidden-xl-down")
    $(@).parent().find("tr").last().toggleClass("hidden-xl-down")
    if $(@).text() isnt less_text then $(@).text(less_text) else $(@).text(more_text)
