//
//  JWPlayer.h
//  ReactNativeJW
//
//  Created by Ian Boynton on 10/2/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JWPlayer_iOS_SDK/JWPlayerController.h>

@interface JWPlayerController : NSObject <RCTBridgeModule>
@property (nonatomic) JWPlayerController *player;
@end
