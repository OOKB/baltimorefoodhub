React = require 'react'
cx = require '../cx'
_ = require 'lodash'

Toggle = require './toggle'
LARGE_SCREEN_SIZE = 767

module.exports = React.createClass
  getInitialState: ->
    {nav} = @props.data
    snap: true
    activeSection: nav[0].link
    menuOpen: true
    innerWidth: 900
    programsActive: false

  handleScroll: ->
    y = window.pageYOffset
    h = window.innerHeight
    activeSection = @state.activeSection
    # What section are we in?
    @sectionCoords.forEach (section) ->
      if y > section.offset
        activeSection = section.link
    newState = {}
    changeState = false

    # Change the active section.
    if activeSection != @state.activeSection
      newState.activeSection = activeSection
      changeState = true

    # When to show the menu.
    # Window height -200 px.
    # if y > (h-120) and not @state.snap
    #   newState.snap = true
    #   changeState = true

    # When to hide menu after it's been shown.
    # if y < (h-120) and @state.snap
    #   newState.snap = false
    #   changeState = true

    if changeState
      @setState newState

    return

  handleResize: ->
    {navOffsetDefault, nav} = @props.data
    {menuOpen} = @state

    # Calculate what section we are in.
    sectionCoords = []
    # Loop through every nav item.
    _.each nav, (item) ->
      {href, link, offset} = item
      # Easy way to skip a nav item is to set the href value to anything.
      # Also check to see if the link val is found as an html el id.
      if _.isUndefined(href) and el = document.getElementById(link)
        # Calculate where the section starts.
        pos = offset or navOffsetDefault
        pos = parseInt(pos) + window.pageYOffset
        pos += el.getBoundingClientRect().top
        sectionCoords.push
          link: link
          offset: pos
    @sectionCoords = sectionCoords

    # When smallScreen is true menuOpen should be false.
    if menuOpen is (window.innerWidth < LARGE_SCREEN_SIZE)
      @setState
        innerWidth: window.innerWidth
        menuOpen: !menuOpen

  sectionCoords: []

  handleToggle: ->
    @setState menuOpen: !@state.menuOpen

  componentDidMount: ->
    handleScroll = _.throttle @handleScroll, 250
    handleScroll()
    window.onscroll = handleScroll

    window.addEventListener 'resize', @handleResize
    @handleResize()

  componentWillUnmount: ->
    window.onscroll = undefined
    window.removeEventListener 'resize', @handleResize

  handleProgramsClick: (e) ->
    if e and e.preventDefault
      e.preventDefault()
    @setState programsActive: !@state.programsActive

  handleSectionClick: ->
    _.delay @handleScroll, 200

  linkEl: (props) ->
    {activeSection, programsActive} = @state
    {link, first, last, href, title, onClick} = props
    key = link or title
    href = href or '#'+link
    classNames =
      'nav-item': true
      first: first
      last: last
      active: activeSection and activeSection == link
    if link
      classNames[link] = true
    onClickFunc = (e) =>
      if onClick
        onClick(e)
      if window.innerWidth < LARGE_SCREEN_SIZE
        @setState menuOpen: false

    <li key={key} className={cx(classNames)}>
      <a href={href} onClick={onClickFunc} title={title}>{title}</a>
    </li>

  render: ->
    {snap, menuOpen, activeSection, innerWidth, menuOpen} = @state
    {nav} = @props.data
    last_i = nav.length - 1

    # Calculate if window is small.
    if innerWidth < LARGE_SCREEN_SIZE
      smallScreen = true
      # The toggle is added to the DOM when the screen is small.
      ToggleEl = <Toggle handleToggle={@handleToggle} menuOpen={menuOpen} />
    else
      smallScreen = false
      # Large window always shows menu.
      menuOpen = true
      # Large window hides toggle.
      ToggleEl = false

    # Build NavList element.
    if menuOpen
      # Build array of links.
      Links = nav.map (link, i) =>
        link.first = i == 0
        link.last = i == last_i
        @linkEl link
      NavList = <ul className="nav">{Links}</ul>
    else
      NavList = false

    # Calculate the class names for the nav element.
    navClasses =
      'main-nav': true
      'show-menu': menuOpen
      'fixed': snap
    if activeSection
      navClasses[activeSection] = true

    # Navigation template.
    <nav className={cx(navClasses)}>
      {ToggleEl}
      {NavList}
    </nav>
