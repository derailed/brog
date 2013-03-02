Template.post.helpers
  timestamp: ->
    moment( this.created_at ).format( "MMM Do h:mm a" )
    
Template.post.events
  'click a.comment': (evt) ->
    evt.preventDefault()
    
    target  = $( ":input[data-id='#{this._id}']")
    comment = target.val()
    if comment and comment.length > 0
      Posts.update( {title: this.title},
                    $push:{ comments: {content:comment, created_at:new Date()} } )
      target.val( "" )