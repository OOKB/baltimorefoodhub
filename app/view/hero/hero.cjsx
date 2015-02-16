React = require 'react'

module.exports = React.createClass
  render: ->
    {title, tagline, blurb} = @props.data
    <article id="hero">

      <h1>{title}</h1>

      <section className="top">
        <div className="circlewrap">
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
          <div className="circle"></div>
        </div>
        <div className="logowrap">
          <img src="bfh-logo-white-trans.png" alt="Baltimore Food Hub Logo" />
        </div>

      </section>

      <section className="bottom">
        <div className="container">
          <h2>{blurb}</h2>
        </div>
      </section>

    </article>
