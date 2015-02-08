React = require 'react'

Email = require '../emailField'

module.exports = React.createClass

  render: ->
    {name, title, email, phone} = @props.mainContact

    <ul className="main-contact">
      <li className="name">{name}</li>
      <li className="title">{title}</li>
      <li className="email"><Email email={email} /></li>
      <li className="phone">{phone}</li>
    </ul>
