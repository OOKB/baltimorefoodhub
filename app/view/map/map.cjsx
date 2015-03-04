React = require 'react'
_ = require 'lodash'

module.exports = React.createClass
  # The default state object when this component is created/loaded.
  getInitialState: ->
    activeBuildingId: null

  handleClick: (id) ->
    #console.log 'clicked', id
    if id == @state.activeBuildingId
      @setState {activeBuildingId: null}
    else
      @setState {activeBuildingId: id}

  render: ->
    # Variables we want from the state object of this component.
    {activeBuildingId} = @state
    # Variables from data props.
    # Directories are in the content object. Each dir name is there.
    {buildings} = @props.data.content

    # Define a default building info element. false is nothing.
    buildingInfoEl = false

    # For every building create a div element with the information of that building.
    # If building is active then create buildingInfoEl.
    buildingElements = buildings.map (item, i) =>
      # The variables we want from each building object.
      {building, title, id, sample, leasing, sf, ceilings, floors, loading, content, leased, tenants} = item
      if _.isArray title
        title = title.join(' ')
      # Define the class name for each building div.
      className = "building bld#{i} #{id}"
      # Define a function that gets called on the click of this div.
      onClickFunc = =>
        # Using => instead of -> makes it possible to use @handleClick.
        @handleClick(id)

      # If this is the active building create an info div.
      if activeBuildingId and activeBuildingId is id
        # If a building was clicked on show the information for that building.
        buildingInfoEl =
          <ul className="building-info bld#{i}">
            <li className="close"><button onClick={onClickFunc}>Close</button></li>
            <li className="bld-number"><p>Building #{i+1}</p></li>
            <li><h3>{title}</h3></li>
            {if leased then <li className="leased"><p>{leased}</p></li>}
            {if sf then <li className="list-item sf">{sf} sq. ft</li>}
            {if ceilings then <li className="list-item ceilings">{ceilings} Ceilings</li>}
            {if floors then <li className="list-item floors">{floors}</li>}
            {if loading then <li className="list-item loading">{loading}</li>}
            <li className="add-top" dangerouslySetInnerHTML={__html: content} />
            {if tenants then <li className="tenants"><strong>Tenant:</strong> <em>{tenants}</em></li>}
          </ul>

      # Build the element we want for each building.
      return <button key={id} className={className} onClick={onClickFunc}><span>{title}</span></button>

    <article id="map">
      <h2>Directory</h2>
      <p className="small"><em>Click on a building below for more information. <br className="visible-lg" /> Map information is subject to change.</em></p>
      <div className="map-group">
        {buildingElements}
        <img src="/assets/img/map-feb24-rendering.jpg" alt="Baltimore Food Hub Campus Map (Rendering by Ziger/Snead Architects)" />
      </div>
      {buildingInfoEl}
    </article>
