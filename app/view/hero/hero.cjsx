React = require 'react'

module.exports = React.createClass
  render: ->
    {title, tagline, blurb} = @props.data
    <article id="hero">
      <section className="container text-center">
        <figure className="logo">
          <img src="bfh-logo-gradient.png" alt="Baltimore Food Hub Logo" />
        </figure>
        <h1 className="sitename">{title}</h1>
        <h2 className="sitename">{blurb}</h2>
      </section>
    </article>
