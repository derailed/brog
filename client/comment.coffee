Template.comment.helpers
  timestamp: ->
    moment( this.created_at ).format( "HH:mm A" )
