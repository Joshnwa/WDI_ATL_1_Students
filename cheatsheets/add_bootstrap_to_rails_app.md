#Add Bootstrap to Your Rails App

1)  add to **Gemfile**

```
gem 'bootstrap-sass', '~> 3.2.0'
gem 'twitter-bootstrap-rails'
gem 'autoprefixer-rails'
```

2)  Change **application.css** to **application.css.sass** and insert the following lines above `*= require_tree .`

```
 @import "bootstrap-sprockets"
 @import "bootstrap"
```


3)  Make sure your **application.js** file includes the following require statements:

```
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require bootstrap
//= require bootstrap-sprockets
//= require_tree .
```

4) create a 'bootstrap_and_overrides.css' file in your layouts folder and add:

```
/*
  =require twitter-bootstrap-static/bootstrap

  Use Font Awesome icons (default)
  To use Glyphicons sprites instead of Font Awesome, replace with "require twitter-bootstrap-static/sprites"
  =require twitter-bootstrap-static/fontawesome
  */
```

