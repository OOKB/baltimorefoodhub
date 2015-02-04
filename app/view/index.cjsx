React = require 'react'

{RouteHandler} = require 'react-router'

Head = require './head/head'
Foot = require './foot/foot'
Map = require './map/map'
About = require './about/about'

module.exports = React.createClass
  render: ->
    {data} = @props
    {title, sha} = data

    appFileName = sha or 'app'
    cssFilePath = "/assets/#{appFileName}.css"
    jsFilePath = "/assets/#{appFileName}.js"

    <html>
      <head>
        <title>{title}</title>
        <meta charSet="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" type="text/css" href={cssFilePath} />
      </head>
      <body>
        <Head data={data} />
        <Map />
        <RouteHandler data={data} />
        <p className="container">about section...</p>
        <About data={data} />
        <section className="container">
          <p>Potential Building and Site Uses: If we propose potential uses that would make this site amazing, will potential tenants be attracted to consider leasing the space?</p>
          <ul>
            <li>Commissary</li>
            <li>Dry Storage</li>
            <li>Cold Storage</li>
            <li>Food Truck Parking</li>
            <li>Co-Working Space</li>
            <li>Food Tech</li>
            <li> Aquaponics</li>
            <li>Composting</li>
            <li>Urban Farming</li>
            <li>Roastery</li>
            <li>Cannery</li>
            <li>Packaging </li>
            <li>Design</li>
            <li>Marketing and PR</li>
            <li>Food Consulting</li>
            <li>Certifications</li>
          </ul>
        </section>
        <p className="container">contact section...</p>
        <p className="container">Is there a way that we can have all contact information be categorized: Leasing / General Info. / Press and Media</p>
        <p className="container">leasing section... link to leasing docs</p>
        <Foot data={data} />
        <script src={jsFilePath} type="text/javascript" />
      </body>
    </html>
