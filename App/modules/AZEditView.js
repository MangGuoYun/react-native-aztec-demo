import PropTypes from 'prop-types';
import React, {Component} from 'react';
import { requireNativeComponent, findNodeHandle, NativeModules } from 'react-native';
var RNAZEditViewManager = NativeModules.RNAZEditViewManager;

class AZEditView extends Component {

    setHTML(html) {
        RNAZEditViewManager.setHTML(findNodeHandle(this),html);
    }

    render() {
        return <RNAZEditView {...this.props} />;
    }
}

AZEditView.propTypes = {
    text: PropTypes.string,
    textColor: PropTypes.string,
}

var RNAZEditView = requireNativeComponent('RNAZEditView',AZEditView);

export default AZEditView;
