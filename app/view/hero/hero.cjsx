React = require 'react'

slides = [
  'http://bfh.ookb.co/slideshow/001-coworkingdesk.jpg'
  'http://bfh.ookb.co/slideshow/002-beets.jpg'
  'http://bfh.ookb.co/slideshow/003-coffeebeans.jpg'
]

module.exports = React.createClass
  getInitialState: ->
    activeSlide: 0

  componentDidUpdate: ->
    clearInterval @interval
    @interval = setInterval @next, 4000

  componentDidMount: ->
    @interval = setInterval @next, 3000

  componentWillUnmount: ->
    clearInterval @interval

  next: ->
    {activeSlide} = @state
    if activeSlide == slides.length-1
      @setState activeSlide: 0
    else
      @setState activeSlide: activeSlide+1

  render: ->
    {title, tagline, blurb} = @props.data
    {activeSlide} = @state
    slideSrc = slides[activeSlide]

    <article id="hero">

      <h1>{title}</h1>

      <section className="top">

        <div id="slideshow" className="cycle-slideshow">
          <img className="slide" src={slideSrc} />
        </div>

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
