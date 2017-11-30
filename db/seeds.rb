# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create([{ email: 'tony@gmail.com', password: 'tony', password_confirmation:'tony' }])
trips = Trip.create([{ name: 'Boston Architecture',
                       description: 'An overview of Boston Architecture',
                       center_lng: -71.1416098,
                       center_lat: 42.3267033,
                       zoom: 14,
                       user_id: 1 }])
markers = Marker.create([{ name: 'Art of Americas @ MFA',
                           description: 'This 121,037-square-foot wing of Bostons Museum of Fine Art opened in late 2010. Norman Fosters London firm designed it in collaboration with CBT Architects of Boston.',
                           lng: -71.137618,
                           lat: 42.340759,
                           image_url: '../../assets/images/250px-Carpenter_Center_for_the_Visual_Arts.jpg',
                           poi_url: 'http://www.mfa.org/',
                           trip_id: 1,
                           user_id: 1 },
                         { name: 'Carpenter Center',
                           description: 'This modern Harvard building by Le Corbusier holds art studios, galleries & film screenings.',
                           lng: -71.1147346,
                           lat: 42.3737181,
                           image_url: '../../assets/images/250px-Carpenter_Center_for_the_Visual_Arts.jpg',
                           poi_url: 'https://carpenter.center/',
                           trip_id: 1,
                           user_id: 1 }])
