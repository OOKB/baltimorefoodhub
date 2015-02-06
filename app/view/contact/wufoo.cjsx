React = require 'react'

module.exports = React.createClass

  wufoo: (id, subdomain) ->
    divId = "wufoo-#{id}"
    link = "https://#{subdomain}.wufoo.com/forms/#{id}/"
    js = "var #{id};
              (function(d, t) {
              var s = d.createElement(t), options = {
                'userName':'#{subdomain}',
                'formHash':'#{id}',
                'autoResize':true,
                'height':'976',
                'async':true,
                'host':'wufoo.com',
                'header':'hide',
                'ssl':true};
              s.src = ('https:' == d.location.protocol ? 'https://' : 'http://') + 'www.wufoo.com/scripts/embed/form.js';
              s.onload = s.onreadystatechange = function() {
              var rs = this.readyState; if (rs) if (rs != 'complete') if (rs != 'loaded') return;
              try {
                #{id} = new WufooForm();
                #{id}.initialize(options);
                #{id}.display(); } catch (e) {}};
              var scr = d.getElementsByTagName(t)[0], par = scr.parentNode; par.insertBefore(s, scr);
              })(document, 'script');"

    <div className="contact-form">
      <div id={divId}>
        <a href={link}> Fill out our contact form here.</a>
      </div>
      <script type="text/javascript" dangerouslySetInnerHTML={__html: js} />
    </div>

  render: ->
    {hash, subdomain} = @props
    unless hash and subdomain
      console.log 'no wufoo info in data'
      return false

    return @wufoo hash, subdomain
