# Ruby on Rails Tutorial: sample application

This is the sample application for
<<<<<<< HEAD
[*Ruby on Rails Tutorial: Learn Web Development with Rails*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/). You can use this reference implementation to help track down errors if you end up having trouble with code in the tutorial. In particular, as a first debugging check I suggest getting the test suite to pass on your local machine:

    $ cd /tmp
    $ git clone git@github.com:railstutorial/sample_app_2nd_ed.git
    $ cd sample_app_2nd_ed
    $ bundle install
    $ bundle exec rake db:migrate
    $ bundle exec rake db:test:prepare
    $ bundle exec rspec spec/

If the tests don't pass, it means there may be something wrong with your system. If they do pass, then you can debug your code by comparing it with the reference implementation.
=======
[*Ruby on Rails Tutorial: Learn Rails by Example*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/).
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6
