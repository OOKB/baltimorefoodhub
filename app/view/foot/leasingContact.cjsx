React = require 'react'

Email = require '../emailField'

module.exports = React.createClass

  render: ->
    {name, email, phone} = @props.leasingContact

    <ul className="leasing-contact">
      <li className="heading"><strong>Leasing Contact</strong></li>
      <li className="name">{name}</li>
      <li className="email"><Email email={email} /></li>
      <li className="phone">{phone}</li>
    </ul>
