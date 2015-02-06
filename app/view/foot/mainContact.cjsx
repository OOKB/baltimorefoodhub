React = require 'react'

Email = require '../emailField'

module.exports = React.createClass

  render: ->
    {name, title, email, phone} = @props.mainContact
    nameTitle = "#{name}, #{title}"


    <div className="main-contact">
      <div className="name-title">{nameTitle}</div>
      <div className="email"><Email email={email} /></div>
      <div className="phone">{phone}</div>
    </div>
