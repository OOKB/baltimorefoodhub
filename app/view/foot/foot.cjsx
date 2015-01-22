React = require 'react'

{ButtonToolbar, Button, Row, Col} = require 'react-bootstrap'

Credits   = require './credits'

module.exports = React.createClass
  getInitialState: ->
    name: null

  componentDidMount: ->
    #@fbClick()

  render: ->
    {data} = @props
    {title, tagline, since, builtDesigned} = data

    yr = new Date().getFullYear()
    msg = "\u00a9 Copyright #{since}-#{yr}, #{title}"

    <footer>
      <div className="container">
        <Row>
          <Col sm={4} className="footer-credits">
            <Credits builtDesigned={builtDesigned} />
          </Col>
          <Col sm={4}>
            <p>{msg}</p>
          </Col>
        </Row>
      </div>
    </footer>
