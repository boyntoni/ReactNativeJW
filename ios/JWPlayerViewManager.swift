//
//  JWPlayerViewManager.swift
//  ReactNativeJW
//
//  Created by Ian Boynton on 10/3/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation


@objc(JWPlayerViewManager)
class JWPlayerViewManager: RCTViewManager, JWPlayerDelegate {
  
  var player = JWPlayerController()
  
  
  override func view() -> UIView! {
//    let label = UILabel()
//    label.text = "JW PLAYER BOOYA"
//    label.textAlignment = .center
//    return label
    
    createPlayer()
//    self.view.addSubview(player.view)
    return player.view
    
  }
  
  func createPlayer(){
    let item = JWPlaylistItem()
    item.file="https://content.jwplatform.com/manifests/1sc0kL2N.m3u8"
    item.title = "Press Play"
    
    let playlist = [item]
    let jwConfig = JWConfig()
    jwConfig.playlist = playlist
    jwConfig.autostart = false
    jwConfig.controls = true
    
    let width = UIScreen.main.bounds.size.width
    let frame = CGRect(x: 0, y: 0, width: width, height: width)
    self.player = JWPlayerController(config: jwConfig)
    self.player.forceFullScreenOnLandscape = true
    self.player.forceLandscapeOnFullScreen = true
    self.player.delegate = self
    self.player.openSafariOnAdClick = true
    self.player.view.frame = frame
    
  }
}
