###Creating a CRUD app

* Dog DB / Happitails Animal Shelter
* This morning we focused on the controller & view
* Create a Welcome Controller with a few static pages
* This afternoon we are going to add in the model

  - `rails new dog_db -d postgresql`

### Setting up our database
- database.yml
  - like our AR config
  - get rid of test and production

- rake db:create
  - check in psql
  - rails dbconsole

### What is a database migration?
- http://guides.rubyonrails.org/migrations.html (section 1, 2.1)

- database migrations
  - rake db:migrate

`rails generate migration CreateDogs`

```
class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.text :image_url
    end
  end
end

```

`rails generate migration AddAgeToDogs`

```
class AddAgeToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :age, :integer
  end
end

```

- rake db:rollback

- schema.rb
- seeds.rb
  - rake db:seed

- rails console
- Update gemfile with pry-rails
- bundle install

--- 

- Setup a home and about page for our app

- Review RESTful Routes

- One model crud app
  - Index
  - New
  - Show
  - Create

- DogsController < ApplicationController
  - security
  - forms need authenticity tokens

- Route
- Controller
- View

- Strong params?

https://github.com/wdi-sf-march-2014/notes/blob/master/IntroToRails/rails_routing.md

---

Pair
- Create a 1 Model Rails app for an organization CYOA. Dunder Mifflin.