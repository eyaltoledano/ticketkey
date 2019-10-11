# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

date = DateTime.now - (rand * 21000)

venues = Venue.create(
  [
    {
      name: 'Bell Center',
      address: '1909 Avenue des Canadiens',
      description: 'The Bell Centre, formerly known as the Molson Centre, is a sports and entertainment complex in Montreal, Quebec, Canada. It opened on March 16, 1996, after nearly three years under construction.'
    },
    {
      name: 'Corona Theater',
      address: '2490 Notre-Dame West',
      description: 'The Corona Theatre, in Montreal, Quebec, Canada is located at 2490 Notre-Dame Street West in the Little Burgundy neighbourhood of the borough of Le Sud-Ouest. It is one of several vintage movie theatres in Montreal whose façade and interior have retained their original appearance.'
    },
    {
      name: 'MTELUS',
      address: '59 St-Catherine East',
      description: "The M Telus is a performing arts centre in Montreal, Quebec, Canada. It is located in the central part of the city's downtown core, on Saint Catherine Street East between Saint-Dominique and De Bullion Streets, in the Quartier des Spectacles"
    }
  ]
)

brands = Brand.create(
  [
    {
      name: 'Immobiliaire',
      description: 'A real estate group purchased by the Corleone family.',
      email: 'mike@corleone.com',
      password_digest: 'test',
    },
    {
      name: 'Coca Cola',
      description: 'A beverage company that is more than 100 years old.',
      email: 'james@cocacola.com',
      password_digest: 'test',
    },
    {
      name: 'Nike',
      description: 'One of the most recognized athletics brand worldwide.',
      email: 'jim@nike.com',
      password_digest: 'test',
    },
  ]
)

events = brands.collect do |brand|
  brand.events.create(
    [
      {
        name: 'First Event',
        category: 'Concerts',
        date_start: date,
        date_end: (date + 1),
        venue_id: 1
      },
      {
        name: 'Second Event',
        category: 'Sports',
        date_start: (date + 2),
        date_end: (date + 3),
        venue_id: 2
      },
      {
        name: 'Thid Event',
        category: 'Opera',
        date_start: (date + 4),
        date_end: (date + 5),
        venue_id: 3
      },
    ]
  )
end

price = 10

tickets = Event.all.each do |event|
  date_start = event.date_start
  date_end = event.date_end
  brand = event.brand
  venue = event.venue

  event.tickets.create(
    [
      {
        price: price,
        description: 'General Admission',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: price,
        description: 'General Admission',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: price,
        description: 'General Admission',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: price,
        description: 'General Admission',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: price,
        description: 'General Admission',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: price,
        description: 'General Admission',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: price,
        description: 'General Admission',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: price,
        description: 'General Admission',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: price,
        description: 'General Admission',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: price,
        description: 'General Admission',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: (price * 10),
        description: 'VIP',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: (price * 10),
        description: 'VIP',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      },
      {
        price: (price * 10),
        description: 'VIP',
        seating_info: 'Nonassigned Seating',
        valid_start: date_start,
        valid_end: date_end,
        brand: brand,
        venue: venue
      }
    ]
  )
end
