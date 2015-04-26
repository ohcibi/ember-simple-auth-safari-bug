To reproduce the bug, do the following:

* Install gems with `bundle install`
* `cd public`
* `npm install && bower install`
* `node_modules/.bin/ember build`
* `cd ..`
* `bundle exec ruby app.rb`

You can now navigate to http://localhost:4567 which should redirect you to the login page. After
logging in with any credentials (be sure to enter both username and password), safari redirects back
to the index page.
