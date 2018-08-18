//  Created by react-native-create-bridge

import React, { Component } from 'react'
import { requireNativeComponent } from 'react-native'

const BlackButton = requireNativeComponent('BlackButton', BlackButtonView)

export default class BlackButtonView extends Component {
  render () {
    return <BlackButton {...this.props} />
  }
}
