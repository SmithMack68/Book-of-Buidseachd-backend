# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# create_table "spells", force: :cascade do |t|
#     t.string "name"
#     t.text "short_description"
#     t.string "image"
#     t.text "requirements"
#     t.text "incantation"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end
User.create(username: "Kit", password: "kat")
User.create(username: "Bob", password: "test")


Spell.create([
    {
        name: "Doubling",
        short_description: "Creates a duplicate of any *inanimate* object",
        image:" https://res.cloudinary.com/dcpwwcueu/image/upload/v1663714630/Spells/shutterstock_335792258_nhgrky.jpg",
        requirements: "Wand, Elf Magic, Paladin Magic or Druid Magic",
        incantation: "Duplico"
    },
    {
        name: "Inflammation",
        short_description: "Causes a red rash and swelling, followed by hives and uncontrollable itching",
        image: "https://res.cloudinary.com/dcpwwcueu/image/upload/v1663295900/Spells/shutterstock_1645258102_jjrix1.jpg",
        requirements: "Equal parts Witch's Wart powder and Spider Legs ground together, must put on target.",
        incantation: "Inflammatio"
    },
    {
        name: "Amplify",
        short_description: "Makes your voice louder or hearing better. Point to either your ears or voice box",
        image: "https://res.cloudinary.com/dcpwwcueu/image/upload/v1663294890/Spells/Amplify_tyuwtz.jpg",
        requirements: "Wand, Elf Magic, Paladin Magic or Druid Magic ",
        incantation: "Amplifico"
    }, 
    {
        name: "True Love",
        short_description: "Calls your true love to you. **Only works if you have a true love and they may not be human**",
        image:"https://res.cloudinary.com/dcpwwcueu/image/upload/v1663294892/Spells/Love_qauhg4.jpg",
        requirements: "Needs to be very very quiet and candlelight ONLY to get this spell to work. Wand, Elf Magic, Paladin Magic or Druid Magic",
        incantation: "Amorem Verum"
    },
    {
        name: "Torture",
        short_description: "Causes immense pain to whomever or whatever you curse                                                        ",
        image: "https://res.cloudinary.com/dcpwwcueu/image/upload/v1663295916/Spells/shutterstock_2030272709_ooartc.jpg",
        requirements: "You must be at least 75 years old for this spell and have to be a Witch, Wizard or Cerridwen. NO ORCS!!!!",
        incantation: "Cruciatus"
    },
    {
        name: "Second Sight",
        short_description: "Allows you to have the sight for 15 minutes",
        image: "https://res.cloudinary.com/dcpwwcueu/image/upload/v1663295919/Spells/shutterstock_2017196705_oq17sz.jpg",
        requirements: "Can only be cast on a Blood Moon. Wand, Elf Magic, Paladin Magic or Druid Magic.",
        incantation: "Prognosticatus"
    }
])


Review.create(username: "Kit", comment: "This spell singed my eyebrows, but it really works. Just be super careful!!", spell_id:1, user_id:1)
Review.create(username: "Kit", comment: "Particularly helpful for calling little lost lambs home", spell_id:3, user_id:1)
Review.create(username: "Bob", comment: "Definitely DO NOT try this on living things! Scary, I have no words.", spell_id:1, user_id:2)
