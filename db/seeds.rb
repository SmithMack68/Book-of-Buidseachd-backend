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

Review.create(username: "Kit", comment: "This spell singed my eyebrows, but it really works. Just be super careful!!", spell_id:1, user_id:1)

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
        short_description: "Causes a red rash and swelling",
        image: "https://res.cloudinary.com/dcpwwcueu/image/upload/v1663295900/Spells/shutterstock_1645258102_jjrix1.jpg",
        requirements: "Equal parts Witch's Wart powder and Spider Legs ground together, must put on target.",
        incantation: "Inflammatio"
    },
    {
        name: "Amplify",
        short_description: "Makes your voice louder or hearing better",
        image: "https://res.cloudinary.com/dcpwwcueu/image/upload/v1663294890/Spells/Amplify_tyuwtz.jpg",
        requirements: "Wand, Elf Magic, Paladin Magic or Druid Magic point to desired result",
        incantation: "Amplifico"
    }
])



