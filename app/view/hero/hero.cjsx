React = require 'react/addons'
ReactCSSTransitionGroup = React.addons.CSSTransitionGroup

module.exports = React.createClass
  getInitialState: ->
    activeSlide: 0

  componentDidUpdate: ->
    clearInterval @interval
    @interval = setInterval @next, 3000

  componentDidMount: ->
    @interval = setInterval @next, 2000

  componentWillUnmount: ->
    clearInterval @interval

  next: ->
    {activeSlide} = @state
    {imgSlides} = @props.data
    if activeSlide == imgSlides.length-1
      @setState activeSlide: 0
    else
      @setState activeSlide: activeSlide+1

  render: ->
    {title, tagline, blurb, imgSlides} = @props.data
    {activeSlide} = @state
    slideSrc = imgSlides[activeSlide]

    <article id="hero">

      <h1>{title}</h1>

      <section className="top">

        <div id="slideshow" className="cycle-slideshow">
          <ReactCSSTransitionGroup transitionName="carousel-left">
            <div className="slide" style={backgroundImage: 'url(' + slideSrc + ')'} key={activeSlide} />
          </ReactCSSTransitionGroup>
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
          <a href="#map"><img src="bfh-logo-white-trans.png" alt="Baltimore Food Hub Logo" /></a>
        </div>

      </section>

      <section className="bottom">
        <div className="container">
          <h2>{blurb}</h2>
        </div>
      </section>

    </article>
