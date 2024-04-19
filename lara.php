
<h1>What is a Service container?</h1>
A Service container is one of the most powerful tools used to manage dependencies over the class and
 perform dependency injections.

-> A service container can be used as a registry to keep track of all the classes in use within your application.
-> In addition, it also helps in binding interfaces to concrete classes.

----------------------------------------------------------------------------------------------------------------
In Laravel, contracts are a set of interfaces that define the core services provided by Laravel.
They act as a blueprint for various Laravel components, such as authentication, caching, queues, and more.
Laravel defines various interfaces in the Illuminate\Contracts namespace.

-------------------------------------------------------------------------------------------------------------
Developers often use the ‘cursor method’ while processing large amounts of data on Laravel.
-----------------------------------------------------------------------------------------------------------
When you are handling more data, it is better to use Laravel's DB facade query builder than Laravel's Eloquent ORM.

------------------------------------------------------------------------------------------------------
To disable CSRF protection for specific routes, developers can add the URL or route to the ‘$except’ variable. 
The variable is readily available from the path app\Http\Middleware\VerifyCsrfToken.php file.

------------------------------------------------------------------------------------------------------------
The with() function in Laravel is used to eager load relationships for the retrieved models. It's typically used
when retrieving models that have relationships with other models to avoid the N+1 query problem.

-------------------------------------------------------------------------------------------------
One Has Through                  
        post->user->country
        //model post.php
        public function post(){
        return $this->hasOneThrough(country::class,user::class);
        }

-------------------------------------------------------------------------------------------------------
Has Many Through

country -> users -> posts
find all posts each country

//country.php (model file)
public function posts(){
  return $this->hasManyThrough(post::class,user::class);
}

-----------------------------------------------------------------------------------------------------------

has one of many 
    customer table->orders table
    find lastestorder,odertest, max,min
    return $this->hasOne(order::class)->->latestOfMany();
                                         oldestOfMany();;

---------------------------------------------------------------------------------------------------------
one to one polymorphic     

User:                                        public function image()
     id                                      return $this->morphOne(image::class, 'imageable');
     name
post:
     id 
     title     

images:                                    Image.php
    id                                      public function imageable()
    url                                     return $this>morphTO() 
    imagealbe_id
    imageable_type
         
---------------------------------------------------------------------------------------------------------
one to many polymorphoc


post:                                        public function comment()
     id                                      return $this->morphMany(image::class, 'imageable');
     name
video:
     id 
     url  

comments:                                    Comment.php
    id                                      public function commentable()
    detail                                     return $this>morphTo() 
    commentalbe_id
    commentalbe_type

-----------------------------------------------------------------------------------------------------------
many to many polymorphic


post:                                        public function tags()
     id                                      return $this->morphToMany(tag::class, 'taggables');
     name
video:
     id 
     url  

tags:                                    Tag.php
    id                                      public function posts()
    name                                     return $this>morphByMany(post::class, 'taggalbes') 
    taggalbe_id
    taggalbe_type                           public function videos()
                                            return $this->morphByMany(video::class, 'taggalbes')

------------------------------------------------------------------------------------------------------------
1. What is SQL injection and now to handle it?
2. What is Laravel trigger & how to implement it?
3. How to prevent database?
4. What is database indexing?

----------------------------------------------------------------------------------------------------
                                               Chunk 

User::chunk(1000, function ($users) {
    foreach ($users as $user) {
        // Process each user
    }
});

The callback function provided to the chunk method is executed for each chunk of records.

                                              Lazy
                                              $users = User::lazy();
foreach ($users as $user) {
    // Process each user
}
It's suitable for scenarios where you need to process records one by one 
without loading the entire dataset into memory.
NO need callback function
worked more than one table as relationship.

                                              Cursor

Only worked for single table.                                              
$users = User::cursor();
foreach ($users as $user) {
    // Process each user
}

Performance: cursor is generally more efficient for read-heavy operations because it doesn't instantiate 
model instances for each record, whereas chunk and lazy do.
-------------------------------------------------------------------------------------------------