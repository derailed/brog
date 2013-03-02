Template.post.helpers
  timestamp: ->
    moment( this.created_at ).format( "MMM Do YY, h:mm:ss a" )