import PropTypes from 'prop-types';
import React, {Component} from 'react';
import { requireNativeComponent, findNodeHandle, NativeModules } from 'react-native';

var RNAZEditViewManager = NativeModules.RNAZEditViewManager;

class AZEditView extends Component {

    setHTML(html) {
        RNAZEditViewManager.setHTML(findNodeHandle(this),html);
    }

    getHTML(prettify,callback) {
        RNAZEditViewManager.getHTML(findNodeHandle(this),prettify,(error,html) => {
            if(callback) callback(html);
        });
    }

    getText(callback) {
        RNAZEditViewManager.getText(findNodeHandle(this),(error,text) => {
            if(callback) callback(text);
        });
    }

    insertText(text) {
        RNAZEditViewManager.insertText(findNodeHandle(this),text);
    }

    _onFocus = (event) => {
        if (!this.props.onFocus) {
            return;
        }
        this.props.onFocus(event.nativeEvent);
    }

    _onBlur = (event) => {
        if (!this.props.onBlur) {
            return;
        }
        this.props.onBlur(event.nativeEvent);
    }

    render() {
        return <RNAZEditView {...this.props} onFocus={this._onFocus} onBlur={this._onBlur} />;
    }
}

AZEditView.propTypes = {
    text: PropTypes.string,
    textColor: PropTypes.string,
    onFocus: PropTypes.func,
    onBlur: PropTypes.func,
}

var RNAZEditView = requireNativeComponent('RNAZEditView',AZEditView);

export default AZEditView;
