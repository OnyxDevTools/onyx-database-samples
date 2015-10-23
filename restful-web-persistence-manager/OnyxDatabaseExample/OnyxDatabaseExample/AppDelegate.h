//
//  AppDelegate.h
//  OnyxDatabaseExample
//
//  Created by Osborn, Tim on 10/23/15.
//  Copyright © 2015 Onyx Development Tools. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWGPersistenceManagerApi.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) SWGPersistenceManagerApi* persistenceManager;

@end

