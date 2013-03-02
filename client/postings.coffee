Template.postings.helpers
  posts: -> 
    Posts.find( {}, {sort: [['created_at', 'desc']]} )
    
Template.postings.events 
  'submit #post-form': (evt) ->
    evt.preventDefault()
    
    post   = $('#post-text').val()
    tokens = post.split( "," )
    Posts.insert( 
      title:      _.first( tokens ), 
      content:    _.last( tokens ), 
      created_at: new Date(),
      comments: [
        content:    "You rock Bro!",
        created_at: new Date()
      ] 
    )  
    $('#post-text').val( "" )