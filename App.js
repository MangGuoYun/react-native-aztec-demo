/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import { StyleSheet, View, Text, FlatList, TouchableWithoutFeedback} from 'react-native';
import AZEditView from './App/modules/AZEditView'

export default class App extends Component {

  _onPress(key) {
    const editView = this.refs.editView;
    switch(key) {
      case 'getText':
        {
          editView.getText((text) => {
            console.warn('text:',text);
          });
        }
        break;
      case 'getHTML':
        {
          editView.getHTML(true,(html) => {
            console.warn('html:',html);
          });
        }
        break;
      case 'insertText':
        {
          editView.getText((text) => {
            editView.insertText(text);
          });
        }
        break;
      case 'setHTML':
        {
          editView.setHTML("你好啊！");
        }
        break;
    }
  }

  render() {
    return (
      <View style={styles.container}>
        <AZEditView ref='editView' style = {{width:'100%',height:'30%',marginTop:20,backgroundColor:'#FF0000'}} text='哈哈哈哈哈哈哈' textColor='#FFFFFF'
        onBlur={(event) => {
          console.warn('onBlur:',event);
        }}
        onFocus={(event) => {
          console.warn('onFocus:',event);
        }}/>
        <FlatList
        data={[{'key':'getText'},{'key':'getHTML'},{'key':'insertText'},{'key':'setHTML'}]}
        renderItem = {({item}) => {
          return (
            <TouchableWithoutFeedback onPress={()=>this._onPress(item.key)}>
              <View style={{height:60,alignItems:'center',justifyContent:'center'}}>
                <Text style={{fontSize:16,color:'#FF0000'}}>{item.key}</Text>
              </View>
            </TouchableWithoutFeedback>
          )
        }}/>
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
