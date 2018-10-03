/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 * @flow
 */

import React, {Component} from 'react';
import { StyleSheet, View, requireNativeComponent, Text } from 'react-native';
const JWPlayerView = requireNativeComponent("JWPlayerView")


const config = {
  file: "http://content.bitsontherun.com/videos/bkaovAYt-injeKYZS.mp4",
  image: "http://content.bitsontherun.com/thumbs/bkaovAYt-480.jpg",
  controls: true,
}

export default class App extends Component {

  render() {
    return (
      <View style={styles.container}>
        <JWPlayerView style={styles.wrapper} />
        <View style={{flex: 1}}>
          <Text>Hello There</Text>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1, alignItems: "stretch"
  },
  wrapper: {
    flex: 1, alignItems: "center", justifyContent: "center"
  },
  border: {
    borderColor: "#eee", borderBottomWidth: 1
  },
  button: {
    fontSize: 50, color: "orange"
  }
});
