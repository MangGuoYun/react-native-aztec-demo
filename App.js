/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import { StyleSheet, View, Button} from 'react-native';
import AZEditView from './App/modules/AZEditView'

export default class App extends Component {

  _onPress() {
    const editView = this.refs.editView;
    editView.setHTML("你好啊！");
  }

  render() {
    return (
      <View style={styles.container}>
        <AZEditView ref='editView' style = {{width:'100%',height:'50%',marginTop:64,backgroundColor:'#FF0000'}} text='哈哈哈哈哈哈哈' textColor='#FFFFFF'/>
        <Button title='点击' onPress={this._onPress.bind(this)}></Button>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  }
});
