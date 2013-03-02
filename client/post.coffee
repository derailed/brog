Template.post.helpers
  timestamp: ->
    moment( this.created_at ).format( "MMM Do YY, h:mm:ss a" )
    
Template.post.events
  'click a.comment': (evt) ->
    evt.preventDefault()

    comment = $('#comment-text').val()
    console.log "Commenting on", this, comment    
    Posts.update( {title: this.title},
                  $push:{ comments: {content:comment, created_at:new Date()} } ) 
    $('#comment-text').val( "" )    