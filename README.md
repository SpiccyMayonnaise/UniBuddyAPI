# Flinders API

This project scrapes the Flinders website and creates a database from publicly available data on the website.

The project makes some uses of the data, including signage software for Flinders University.

## API

The API is designed to be RESTful, and enables simple access to the data scraped from the Flinders website by this application.

The supported formats of the API include JSON and JSONP (using ?callback=foo query parameter)


Currently, the requests are supported by the API aree

    GET "/api/v1/buildings.json"

    GET "/api/v1/buildings/:building_id.json"
    GET "/api/v1/buildings/ENGR.json"
    
    GET "/api/v1/buildings/:building_id/rooms.json"
    GET "/api/v1/buildings/ENGR/rooms.json"
    
    GET "/api/v1/buildings/:building_id/rooms/:room_id.json"
    GET "/api/v1/buildings/ENGR/rooms/209.json"
    
    GET "/api/v1/buildings/:building_id/rooms/:room_id/bookings.json"
    GET "/api/v1/buildings/ENGR/rooms/209/bookings.json"

You must append json or jsonp to the URL to request that type of response. If using jsonp, a callback must be specified, e.g. the function Library.beAwesome will be passed the JSON from the following response

    GET "/api/v1/bookings.jsonp?callback=Library.beAwesome"

## Signage

The signage for the project is designed for usage on non-interactive internet-enabled screens, similar to the digital signs seen around Flinders University.

The signage is designed to be accessed via a web browser, and is tested in modern versions of Chrome and Firefox.

Much of the signage's data is dynamically pulled from Flinders university's public website, however some content can be added through the application. This includes "Broadcasts": a means for Lecturers and other staff to post messages to the signage. For example, "COMP1337 has moved from IST202 to ENGR209 on Monday"


## Data

The scraping of the Flinders website is a treacherous undertaking, because the website's HTML is inconsistent and not standards compliant. This project provides an API to save other developers from having to bother scraping the Flinders public website themselves, and hopefully enable other developers to make apps which use the data easily.

The API provided by this application should also help minimize the need to scrape the Flinders University website. Scraping is an expensive operation: pages must be unnecessarily generated by the Flinders website, as no raw data dumping is facilitated. By using FlindersAPI2's API, you won't be hitting the Flinders website, and will not create any load on Flinders' servers.

If you end up making an application using this API, let me if I can do anything to help you.

### Scraped content 

The scraped content includes

* Room bookings
* Term dates
* Blog content
* Topics and classes (TODO)

* Number of computer terminals in use in a room (TODO, not scraped from web)

### Crowdsourcing

A benefit of using the API system as a structured data repository is that data could be crowdsourced. For example, the latitude, longitude and altitude of rooms in Flinders university. This could be used to create, say, signage which shows not just rooms in the same building but rooms within the general vicinity.

## Testing

Unit tests are used to ensure integrity in the project's functionality (TODO)


## Other

### Legal

All code by myself in this repository licensed under the Apache2 license unless otherwise specified. You can pretty much do whatever you want with it. But I would love if you contributed back to the project if it's useful to you :)

Note that some dependencies may not be as leniently licensed.
