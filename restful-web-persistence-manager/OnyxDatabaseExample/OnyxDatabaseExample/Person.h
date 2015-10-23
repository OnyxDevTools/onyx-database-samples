//
//  SWGObject_Person.h
//  OnyxDatabaseExample
//
//  Created by Osborn, Tim on 10/23/15.
//  Copyright © 2015 Onyx Development Tools. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SWGObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : SWGObject

@property (nullable, nonatomic, retain) NSString *firstName;
@property (nullable, nonatomic, retain) NSString *lastName;
@property (nullable, nonatomic, retain) NSNumber *personId;

// Insert code here to declare functionality of your managed object subclass

@end

NS_ASSUME_NONNULL_END
