Template.comment.helpers
  timestamp: ->
    moment( this.created_at ).format( "ddd MMMM YYYY HH:mm A" )