React = require 'react'
Router = require 'react-router'
{Route, DefaultRoute} = Router

Index = require './view/index'

module.exports =
  <Route name="app" path="/" handler={Index}>
  </Route>
