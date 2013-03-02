Meteor.startup ->
  return if Posts.findOne()
  Posts.insert(
    title:      "Bitch'n bro!",
    created_at: new Date( 2013, 2, 1, 10, 30 ),
    content:    "That a gnarly mullet bro..,",
    comments:   [
      content:    "ATTA Boy bro."
      created_at: new Date( 2013, 2, 1, 11, 30 )
    ] 
  )  
  Posts.insert( 
    title:      "Tan Bro!",
    content:    "Smooth as leather",
    created_at: new Date( 2013, 2, 2, 12, 30 ),
    comments:   [
      content:    "You're so cool bro!",
      created_at: new Date(2013, 2, 3, 13, 15 )
    ] 
  )  
  Posts.insert( 
    title:      "Bro boobs?", 
    content:    "Are you wearing a bro?",
    created_at: new Date( 2013, 2, 5, 14, 30 ),
    comments: [
      content:    "Can't really tell...You must workout",
      created_at: new Date( 2013, 2, 6, 20, 30 )
    ] 
  )    
  Posts.insert( 
    title:      "Bros butt...", 
    content:    "Does these jeans make my butt look big?", 
    created_at: new Date( 2013, 2, 15, 21, 0 ),
    comments: [
      content:    "You rock Bro!",
      created_at: new Date( 2013, 2, 17, 22, 30 )
    ] 
  )
  
Meteor.publish "posts", ->
  Posts.find( {}, {sort: ['created_at', 'desc']} )