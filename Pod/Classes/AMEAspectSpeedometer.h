//
//  AMEAspectSpeedometer.h
//  AMEAspectSpeedometer
//
//  Created by satoshi.namai on 2014/07/13.
//  Copyright (c) 2014年 ainame. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ASpects.h>
#import "AMESpeedometer.h"

@interface AMEAspectSpeedometer : NSObject

- (id<AspectToken>)measureWithName:(NSString *)name
                            target:(id)target
                            around:(SEL)selector
                  usingReportBlock:(void (^)(AMESpeedometerReport *))reportBlock;

- (NSArray *)measureWithName:(NSString *)name
                      target:(id)target
                       start:(SEL)startSelector
                      finish:(SEL)finishSelector
            usingReportBlock:(void (^)(AMESpeedometerReport *report))reportBlock;

@end
