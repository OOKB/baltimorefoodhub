React = require 'react'
_ = require 'lodash'

buildings = require '../../data/buildings'
buildingIndex = {}

# Create a building index
_.each buildings, (building, i) ->
  {id} = building
  buildingIndex[id] = i

module.exports = React.createClass
  # The default state object when this component is created/loaded.
  getInitialState: ->
    activeBuildingId: null

  getActiveBuilding: (id) ->
    i = buildingIndex[id]
    buildings[i]

  handleClick: (id) ->
    @setState {activeBuildingId: id}

  render: ->
    # Variables we want from the state object of this component.
    {activeBuildingId} = @state

    # For every building create a div element with the information of that building.
    buildingElements = buildings.map (item, i) =>
      # The variables we want from each building object.
      {title, id} = item
      # Define the class name for each building div.
      className = "building bld#{i} #{id}"
      # Define a function that gets called on the click of this div.
      onClickFunc = =>
        # Using => instead of -> makes it possible to use @handleClick.
        @handleClick(id)

      # Build the element we want for each building.
      return <button key={id} className={className} onClick={onClickFunc}>{title}</button>

    # If a building was clicked on show the information for that building.
    if activeBuildingId
      building = @getActiveBuilding(activeBuildingId)
      {title, id} = item
      buildingInfoEl = <ul className="building-info">
        <li></li>
      </ul>

    <article id="map" className="container">
      {buildingElements}
      <img src="foodhubtemporarymap.png" alt="map" />

    </article>
