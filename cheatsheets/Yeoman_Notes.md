# Yeoman, Grunt, and Bower

Yeoman provides a set of generators for quickly
generating a JavaScript web project. You can use
Yeoman to generate projects with AngularJS, Ember,
Backbone, and many other JavaScript web frameworks.

We will be using Yeoman with the angular generator.

## Install generator-angular
Run the following command to globally install
the angular generator for Yeoman.

    $ npm install -g generator-angular

# Install Compass
Compass is a Ruby gem that converts SASS and SCSS
code into CSS. Compass also comes with many handy
SASS functions for making SASS development more
productive. Our angular generator will be using
Compass so we need to install Compass here.

    $ gem install compass

# Create a new directory for your AngularJS project.

    $ cd
    $ mkdir angular_projects
    $ cd angular_projects
    $ mkdir camping_store
    $ cd camping_store

# Run Yeoman to create a new AngularJS project
From the "camping_store" directory you created above,
run the following:

$ yo angular

When prompted, choose the following:

    ? Would you like to use Sass (with Compass)? (Y/n) Y
    ? Would you like to include Bootstrap? (Y/n) Y
    ? Would you like to use the Sass version of Bootstrap? (Y/n) Y
    x angular-animate.js
    o angular-aria.js
    x angular-cookies.js
    o angular-resource.js
    x angular-messages.js
    x angular-route.js
    x angular-sanitize.js
    o angular-touch.js

Yeoman will now start creating your project and downloading all 
of the Grunt plugins and Bower dependencies.

# Test your project build via the "grunt" command

    $ grunt

The grunt command runs the default build which does the following:

* Runs jshint on all of your JavaScript code
* Executes the unit tests via the Karma test runner
* Converts SASS and SCSS files to CSS
* Minifies HTML, CSS and JavaScript files
* Updates the index.html file to use the minified versions
* Puts all converted and generated code into the "dist" folder

# Kick the tires of your new project via "grunt serve"

    $ grunt serve

This command starts a connect-js server and loads a browser tab with your
new AngularJS project. This command also has a "watch" task that watches your
project for source code changes and runs Grunt tasks to verify your changes
as you save them. The watch task also refreshes your browser tab for you after
updating the project with your latest changes.

# Installing new Grunt Plugins

You can install new Grunt plugins by editing the package.json file and adding
the new plugin as a dev dependency. Then you run "npm install" to install
the plugin. You will need to edit the Gruntfile to configure the plugin (see
the plugin's documentation on how to do this).

# Installing new JavaScript or CSS libraries

You can install new JavaScript, AngularJS, and CSS libraries via bower:

    $ bower install -S <some_new_fancy_library>

For instance, to add underscore to your project, run:

    $ bower install -S underscore

This command will add underscore to your bower.json file, add underscore to
the index.html file, and download the underscore library to your
bower_components directory.

# Other Grunt Commands

    $ grunt test    // only run the unit tests
    $ grunt jshint  // only run the jshint task
    $ grunt clean   // delete the generated directories: ".tmp" and "dist"


