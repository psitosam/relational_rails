# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Podcast.destroy_all
Podcaster.destroy_all

helman = Podcaster.create!(name: "Dr. Anton Helman", podcast_names: "Emergency Medicine Cases, Educator's Podcast", expertise: "Emergency Medicine, Education", active: true, years_active: 2)

harris = Podcaster.create!(name: "Sam Harris", podcast_names: "Making Sense", expertise: "Neuroscience, Philosophy, Current Events", active: true, years_active: 1)

weingart = Podcaster.create!(name: "Dr. Scott Weingart", podcast_names: "EMCrit Podcast, On Deeper Reflection", expertise: "Emergency Medicine, Critical Care, Academic Productivity, Philosophy", active: true, years_active: 2)

helman.podcasts.create!(title:"Emergency Medicine Cases", topic: "Ep. 165: Getting Sued in Emergency Medicine - Practical Tips", length_in_minutes: 77, favorites: true)

helman.podcasts.create!(title:"Emergency Medicine Cases", topic: "EM Quick Hits 36: Surviving Sepsis", length_in_minutes: 62, favorites: true)

helman.podcasts.create!(title:"Educator's Podcast", topic: "Podcasting In MedEd", length_in_minutes: 17, favorites: true)

harris.podcasts.create!(title: "Making Sense", topic: "The Russian War in Ukraine", length_in_minutes: 38, favorites: true)

harris.podcasts.create!(title: "Making Sense", topic: "Recipes For Future Plagues", length_in_minutes: 118, favorites: false)

harris.podcasts.create!(title: "Making Sense", topic: "The Future of American Democracy", length_in_minutes: 141, favorites: true)

weingart.podcasts.create!(title: "EMCrit Podcast", topic: "Ep. 319: Safe and Smart Reversal of Anticoagulation Agents in 2022", length_in_minutes: 9, favorites: false)

weingart.podcasts.create!(title: "On Deeper Reflection", topic: "Email Tactics", length_in_minutes: 37, favorites: false)

weingart.podcasts.create!(title: "EMCrit Podcast", topic: "Surviving Sepsis Update 2022", length_in_minutes: 37, favorites: false)
