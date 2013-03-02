Meteor.startup ->
  return if Posts.findOne()
  # Posts.remove({})
  Posts.insert(
    title:      "Bitch'n bro!",
    created_at: new Date(),
    content:    "That a gnarly mullet bro..,",
    comments:   [
      content:    "ATTA Boy bro."
      created_at: new Date()
    ] 
  )  
  Posts.insert( 
    title:      "Tan Bro!",
    content:    "Smooth as leather",
    created_at: new Date(),
    comments:   [
      content:    "You're so cool bro!",
      created_at: new Date()
    ] 
  )  
  Posts.insert( 
    title:      "Bro boobs?", 
    content:    "Are you wearing a bro?",
    created_at: new Date(),
    comments: [
      content:    "Can't really tell...You must workout",
      created_at: new Date()
    ] 
  )    
  Posts.insert( 
    title:      "Bros butt...", 
    content:    "Does these jeans make my butt look big?", 
    created_at: new Date(),
    comments: [
      content:    "You rock Bro!",
      created_at: new Date()      
    ] 
  )
  
Meteor.publish "posts", ->
  Posts.find( {}, {sort: ['created_at', 'desc']} )