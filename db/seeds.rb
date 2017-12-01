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
                       center_lng: -71.1188793,
                       center_lat: 42.3561337,
                       zoom: 14,
                       user_id: 1 }])
markers = Marker.create([{ name: 'Art of Americas @ MFA',
                           description: 'This 121,037-square-foot wing of Bostons Museum of Fine Art opened in late 2010. Norman Fosters London firm designed it in collaboration with CBT Architects of Boston.',
                           lng: -71.137618,
                           lat: 42.340759,
                           image_url: 'https://github.com/ajackson57/roadtrip-frontend/blob/master/src/assets/images/mfa_image.jpg?raw=true',
                           poi_url: 'http://www.mfa.org/',
                           trip_id: 1,
                           user_id: 1 },
                         { name: 'Carpenter Center',
                           description: 'This modern Harvard building by Le Corbusier holds art studios, galleries & film screenings.',
                           lng: -71.1147346,
                           lat: 42.3737181,
                           image_url: 'https://github.com/ajackson57/roadtrip-frontend/blob/master/src/assets/images/250px-Carpenter_Center_for_the_Visual_Arts.jpg?raw=true',
                           poi_url: 'https://carpenter.center/',
                           trip_id: 1,
                           user_id: 1 },
                         { name: 'Building 32',
                           description: 'The Ray and Maria Stata Center or Building 32 is a 720,000-square-foot academic complex designed by Pritzker Prize-winning architect Frank Gehry for the Massachusetts Institute of Technology.',
                           lng: -71.0906354,
                           lat: 42.3616095,
                           image_url: 'https://github.com/ajackson57/roadtrip-frontend/blob/master/src/assets/images/mit_build.jpeg?raw=true',
                           poi_url: 'http://capitalprojects.mit.edu/projects/stata-center-building-32',
                           trip_id: 1,
                           user_id: 1 },
                         { name: 'Trinity Church',
                           description: 'Trinity Church in the City of Boston, located in the Back Bay of Boston, Massachusetts, is a parish of the Episcopal Diocese of Massachusetts. The congregation, currently standing at approximately 3,000 households, was founded in 1734.',
                           lng: -71.0754961,
                           lat: 42.3499893,
                           image_url: 'https://github.com/ajackson57/roadtrip-frontend/blob/master/src/assets/images/trinity_church.jpeg?raw=true',
                           poi_url: 'http://trinitychurchboston.org/',
                           trip_id: 1,
                           user_id: 1 }])
