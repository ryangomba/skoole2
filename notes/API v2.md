# Users

	/users
	GET		Retrieve all the users at a school : type? term?
	POST	Create a new user : {user}

	/users/:id
	GET		Retrieve a specific user
	PUT		Update a specific user : {user}
	DELETE	Delete a specific user
	
	/users/groups/:id
	GET		Retrieve all the users in a group
	
	/users/courses/:id
	GET		Retrieve all the users enrolled in a course
	
	/users/search
	GET		Retrieve user via uid, username

# Groups

	/groups
	GET		Retrieve all the groups at a school
	POST	Create a new group : {group}
	
	/groups/:id
	GET		Retrieve a specific group
	PUT		Update a specific group : {group}
	DELETE	Delete a specific group
	
	/groups/users/:id
	GET		Retrieve all the groups containing a specific user
	
	/groups/:id/users/:id
	POST	Add or remove users from the group : |add| |remove|

# Courses

	/courses
	GET		Retrieve all the courses at a school : department?
	POST	Create a new course : {course}
	
	/courses/:id
	GET		Retrieve a specific course
	PUT		Update a specific course : {course}
	DELETE	Delete a specific course
	
	/courses/users/:id
	GET		Retrieve all the courses containing a specific user
	
	/courses/:id/users/:id
	POST	Add or remove users from the course : |add| |remove|
	
# Posts

	/posts
	POST	Create a new global post : {post}

	/posts/:id
	GET		Retrieve a specific post
	DELETE	Delete a specific post
	
	/posts/users/:id
	GET		Retrieve all the posts by a specific user
	DELETE	Delete all posts by a specific user
	
	/posts/groups/:id
	GET		Retrieve all the posts within a group
	POST	Create a new post within a group : {post}
	DELETE	Delete all posts within a group
	
	/posts/courses/:id
	GET		Retrieve all the posts within a course
	POST	Create a new post within a course : {post}
	DELETE	Delete all posts within a course

# Comments

	/comments/:id
	GET		Retrieve a specific comment
	DELETE	Delete a specific comment
	
	/comments/posts/:id
	GET		Retrieve all comments on a specific post
	POST	Create a new comment on a specific post : {comment}
	DELETE	Delete all comments for a specific post
	
	/comments/users/:id
	GET		Retrieve all comments by a specific user
	DELETE	Delete all comments by a specific user

# Likes

???
/likes/posts/:id										# likes for specific post
/likes/comments/:id								# likes for specific comment
/likes/posts/users/:id							# post likes by specific user
/likes/posts/mine									# my liked posts
/likes/comments/users/:id					# comment likes by specific user
/likes/comments/mine							# my liked comments
???

# Feeds

???
/feeds/campus											# campus feed
/feeds/courses											# courses feed for all of a student's courses
/feeds/courses/:id									# course feed
/feeds/students										# ???
/feeds/students/:id
/feeds/groups
/feeds/groups/:id
???

# Assignments

	/assignments/:id
	GET		Retrieve a specific assignment
	PUT		Update a specific assignment : {assignment}
	DELETE	Delete a specific assignment
	
	/assignments/courses/:id
	GET		Retrieve all the assignments for a course
	POST	Create a new assignment for a course : {assignment}

# Submissions

	/submissions/:id
	GET		Retrieve a specific submission
	PUT		Update a specific submission : {submission}
	DELETE	Delete a specific submission
	
	/submissions/assignments/:id
	GET		Retrieve all the submissions for an assignment
	POST	Create new submission for assignment : {submission}
	
	/submissions/assignments/:id/users/:id
	GET		Retrieve submissions for an assignment by a user

# Resources

	/resources/:id
	GET		Retrieve a specific resource
	PUT		Update a specific resource : {resource}
	DELETE	Delete a specific resource
	
	/resources/courses/:id
	GET		Retrieve all the resources for a specific course
	POST	Create a new resource for a course  : {resource}
	