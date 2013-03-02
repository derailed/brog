Template.comment.helpers
  timestamp: ->
    moment( this.created_at ).format( "MM/DD HH:mm A" )