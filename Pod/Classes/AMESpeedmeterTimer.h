//
//  AMESpeedmeterTimer.h
//  AMEAspectSpeedometer
//
//  Created by satoshi.namai on 2014/07/13.
//  Copyright (c) 2014年 ainame. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMESpeedmeterTimer : NSObject

@property (nonatomic, strong, readonly) NSDate *startDatetime;

@property (nonatomic, strong, readonly) NSDate *finishDatetime;

- (void)start;

- (void)finish;

@end
