# The Book of Buidseachd
![Book of Buidseachd](https://github.com/user-attachments/assets/401b4621-9a7e-4b04-9384-0335b1ecf474)
The Book of Buidseachd (pronounced vootsch-och, the Scottish word for witchcraft)
    is inspired by a famous wizard we all know. This project is your personal grimoire or digital book of spells. You can create, edit, or delete your own spells, as well as share and review spells created by others.
-------
-------
![1EB16A45-457C-4C3C-99D2-010D1265FB61_1_105_c](https://github.com/user-attachments/assets/26ae568b-b6d0-44e5-b98e-688772f5caf9)
![4C6075D7-B543-4BF7-9EE2-CA1231378F74_1_105_c](https://github.com/user-attachments/assets/b9278b6f-fa80-4e54-b5bd-bad345f92b94)
![6F204B46-B3DD-4922-A9C3-03839C6230C5_1_105_c](https://github.com/user-attachments/assets/8df7063d-9d40-432e-8d90-97dd1e654b04)
![5BE2A7AF-6035-4928-B3EF-368F0E6FA336_1_105_c](https://github.com/user-attachments/assets/829c758f-7b9e-419a-b3d3-394ce115a525)
------

-------
## Demo Video
[![Scottish Spell Book](https://img.youtube.com/vi/LDLwp0T5Seo/0.jpg)](https://www.youtube.com/watch?v=LDLwp0T5Seo)
-------
Click the video link and it will redirect you to the YouTube demo. **Note it will take you away from GitHub

------
## Overview
This is a full-stack application with a React frontend and Ruby on Rails backend. It uses the bcrypt gem to authenticate and and securely encrypt passwords via cookies and sessions IDs. Authenticated users have access to a personalized homepage to manage their spells and reviews. Enhanced security ensures only logged-in users can edit their own spells and reviews. It also has the future ability for admin permissions. All the images are uploaded to Cloudinary, which can increase conversions and speed up launches. This creates a much faster experience for consumers.
-------
## Fun Facts
All my incantations are derived from genuine Latin words or root words. I had a blast coming up with all of them. One of my favorite parts is the funny reviews, where I let my imagination run wild. There are even some spells that come with hysterical warnings and gruesome outcomes. 

-------

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

