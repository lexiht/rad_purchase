// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React, { Component } from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'

class App extends Component {
  constructor(props){
  	super(props);
  }

  render () {
    return (
      <div>
        <h1>Dashboard of Radiko</h1>
        <h2>
          Signed in as {this.props.firstName} {this.props.lastName}
        </h2>
      </div>
    )
  }
}


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App />,
    document.body.appendChild(document.createElement('div')),
  )
})
