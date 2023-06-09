# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'dotenv/load'

# Members: Member.create(first_name: "", last_name: "", favorite_bible_verse_quote:"", chapter:"", position: "", profile_image:"")


# Events: Event.create(event_name: "", event_date: "", location: "", description: "", address: "", city: "", phone_number: "", zip:"")
# event_1 = Event.create(event_name: "Grupo de Oracion", event_date: "2023-06-28", event_start_time:"18:30", event_end_time:"21:00", location: "St.Kilian Church", description: "Ut ornare lectus sit amet est placerat in egestas. Sit amet nisl suscipit adipiscing bibendum est. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Interdum varius sit amet mattis. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. In nulla posuere sollicitudin aliquam ultrices sagittis orci. Sagittis vitae et leo duis ut diam quam. Cras fermentum odio eu feugiat pretium nibh ipsum. Tincidunt vitae semper quis lectus nulla. Convallis convallis tellus id interdum velit laoreet id donec. Placerat vestibulum lectus mauris ultrices eros. Id ornare arcu odio ut sem nulla pharetra. Egestas purus viverra accumsan in nisl nisi scelerisque eu ultrices.", address: "123 Apple St", city: "Farmingdale", phone_number: "6311737373", zip:"11735", image: "https://www.nacion.com/resizer/YeXzAo3P9OxrKgCLrJdyYk6liT8=/1440x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/gruponacion/EATOMBZLWVETDG45SIKFAFDARM.JPG")
# event_2 = Event.create(event_name: "Misa", event_date: "2023-06-28", event_start_time:"18:30", event_end_time:"21:00", location: "St.Kilian Church", description: "Ut ornare lectus sit amet est placerat in egestas. Sit amet nisl suscipit adipiscing bibendum est. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Interdum varius sit amet mattis. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. In nulla posuere sollicitudin aliquam ultrices sagittis orci. Sagittis vitae et leo duis ut diam quam. Cras fermentum odio eu feugiat pretium nibh ipsum. Tincidunt vitae semper quis lectus nulla. Convallis convallis tellus id interdum velit laoreet id donec. Placerat vestibulum lectus mauris ultrices eros. Id ornare arcu odio ut sem nulla pharetra. Egestas purus viverra accumsan in nisl nisi scelerisque eu ultrices.", address: "123 Apple St", city: "Farmingdale", phone_number: "6311737373", zip:"11735", image:"https://apologeticacatolica.org/wp-content/uploads/2021/01/la-santa-misa.jpg")
# event_3 = Event.create(event_name: "Vigilia de Servidores", event_date: "2023-06-28", event_start_time:"18:30", event_end_time:"21:00", location: "St.Kilian Church", description: "Ut ornare lectus sit amet est placerat in egestas. Sit amet nisl suscipit adipiscing bibendum est. Phasellus faucibus scelerisque eleifend donec pretium vulputate. Interdum varius sit amet mattis. Molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed. In nulla posuere sollicitudin aliquam ultrices sagittis orci. Sagittis vitae et leo duis ut diam quam. Cras fermentum odio eu feugiat pretium nibh ipsum. Tincidunt vitae semper quis lectus nulla. Convallis convallis tellus id interdum velit laoreet id donec. Placerat vestibulum lectus mauris ultrices eros. Id ornare arcu odio ut sem nulla pharetra. Egestas purus viverra accumsan in nisl nisi scelerisque eu ultrices.", address: "123 Apple St", city: "Farmingdale", phone_number: "6311737373", zip:"11735", image:"https://michaelminn.net/cities/farmingdale/st-killian/2017-08-07_14-40-13.jpg")


# Videos: Video.create(name: "", link_to_video: "", date_created: "")
# video_1 = Video.create(name: "Canciones Navideñas", link_to_video: "https://www.youtube.com/embed/01jnClnzO2c", date_created: "2023-01-05")
# video_2 = Video.create(name: "La Unica Razon", link_to_video: "https://www.youtube.com/embed/1PWTbCcNdrU", date_created: "2022-12-04")
# video_3 = Video.create(name: "Ya No Soy Esclavo", link_to_video: "https://www.youtube.com/embed/wlZAtiAJAZI", date_created: "2022-12-04")
# video_4 = Video.create(name: "Jesus Mirame", link_to_video: "https://www.youtube.com/embed/9Gwil-bhVUY", date_created: "2022-09-29")
# video_5 = Video.create(name: "El Borracho Y Cantinero", link_to_video: "https://www.youtube.com/embed/cg3gFfJwKTY", date_created: "2022-09-29")
# video_6 = Video.create(name: "Los Que Esperan en Jesus", link_to_video: "https://www.youtube.com/embed/lGsWlo2NBhI", date_created: "2022-07-12")


# Prayers: Prayer.create(name: "", url_path: "")
# prayer_1 = Prayer.create(name: "", url_path: "")
# prayer_2 = Prayer.create(name: "", url_path: "")
# prayer_3 = Prayer.create(name: "", url_path: "")
# prayer_4 = Prayer.create(name: "", url_path: "")
# prayer_5 = Prayer.create(name: "", url_path: "")
# prayer_6 = Prayer.create(name: "", url_path: "")
# prayer_7 = Prayer.create(name: "", url_path: "")
# prayer_8 = Prayer.create(name: "", url_path: "")
# prayer_9 = Prayer.create(name: "", url_path: "")
# prayer_10 = Prayer.create(name: "", url_path: "")
# prayer_11 = Prayer.create(name: "", url_path: "")


# Seed for Users Table
# jeffrey = User.create(username: ENV['JEFF_USERNAME'], password: ENV['JEFF_PASSWORD'])