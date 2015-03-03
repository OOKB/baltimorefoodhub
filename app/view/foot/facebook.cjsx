React = require 'react'

module.exports = React.createClass
  insertJs: (d, s, id, url) ->
    js = undefined
    fjs = d.getElementsByTagName(s)[0]
    if d.getElementById(id)
      return
    js = d.createElement(s)
    js.id = id
    js.src = url
    fjs.parentNode.insertBefore js, fjs
    return

  componentDidMount: ->
    @insertJs document, 'script', 'facebook-jssdk',
      '//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=109302492423481&version=v2.0'

  render: ->
    <div>
      <div id="fb-root"></div>
      <div className="fb-like" data-href="http://www.baltimorefoodhub.com" data-layout="button" data-action="like" data-show-faces="false" data-share="true" />
    </div>
