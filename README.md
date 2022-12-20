# The Book of Buidseachd

The Book of Buidseachd (pronounced vootsch-och)
    This project is a digital spellbook. Buidseachd is the Scottish gaelic word for witchcraft.
    The idea is you can look through pre-made spells, review them and then create your own spells.
    It is your own personal grimoire.

## Requirements

* ruby "2.7.4"
* gem "rails", "~> 7.0.3", ">= 7.0.3.1"
* Use postgresql as Database for Active Record gem "pg", "~> 1.1"


## System Dependencies

* gem 'cloudinary'
* gem material-ui
* gem 'rack-cors'
* gem 'pry'
* gem 'active_model_serializers', '~> 0.10.2'
* gem "bcrypt", "~> 3.1.7"
* gem "puma", "~> 5.0"
* gem 'dotenv-rails'

## Installation

* Fork and clone this repo
* Bundle and Install necessary gems
* Then make sure Postgres gem 'pg', '~> 1.1' is running (cute little elephant top of your screen)
* Check ruby -v and rails -v to make sure they are running
* Run the following commands
    1. bundle install
    2. rails db:create
    3. rails db:migrate
    4. rails db:seed
    5. rails server or rails s
* By default, the server will run on port http://localhost:3001 (the frontend will run on port 3000)
* Follow directions for installation of frontend [https://github.com/SmithMack68/frontend]

## Images
* All the images used are from Shutterstock
* Images are uploaded with Cloudinary


## Licensing (MIT, optional)

Copyright (c) {{ 2022 }} {{ FlatIronSchool }}

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

