React = require 'react'

{RouteHandler} = require 'react-router'

Head = require './head/head'
Foot = require './foot/foot'
Map = require './map/map'
About = require './about/about'
Contact = require './contact/contact'
Leasing = require './leasing/leasing'

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
        <Map data={data} />
        <RouteHandler data={data} />
        <main>
          <About data={data} />
          <Contact data={data} />
          <Leasing data={data} />
        </main>
        <Foot data={data} />
        <script src={jsFilePath} type="text/javascript" />
      </body>
    </html>
