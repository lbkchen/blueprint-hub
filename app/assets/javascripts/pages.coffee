# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@toggleModal = (modalId) ->
  modal = $("##{modalId}")
  modal.toggleClass('is-active')

$(document).on 'turbolinks:load', () ->
  $("div.sprint-card--add").click (e) ->
    e.preventDefault()
    toggleModal("modal-sprint")

  $('.modal-background, .modal-close, .modal-card-head .delete, .modal-card-foot .button').click (e) ->
    e.preventDefault()
    toggleModal("modal-sprint")
