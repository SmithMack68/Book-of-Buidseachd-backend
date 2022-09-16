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


Spell.create([
    {
        name: "Doubling",
        short_description: "Creates a duplicate of any !inanimate! object",
        image: "./images/SP/Double.jpg",
        requirements: "Wand, Elf Magic, Paladin Magic or Druid Magic",
        incantation: "Duplico"
    },
    {
        name: "Inflammation",
        short_description: "Causes a red rash and swelling",
        image: "./images/SP/Warts.jpg",
        requirements: "Equal parts Witch's Wart powder and Spider Legs ground together, must put on target.",
        incantation: "Inflammatio"
    },
    {
        name: "Amplify",
        short_description: "Makes your voice louder or hearing better",
        image: "./images/SP/Amplify.jpg",
        requirements: "Wand, Elf Magic, Paladin Magic or Druid Magic point to desired result",
        incantation: "Amplifico"
    }
])



