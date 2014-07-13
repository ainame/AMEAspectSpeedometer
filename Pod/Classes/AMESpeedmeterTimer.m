//
//  AMESpeedmeterTimer.m
//  AMEAspectSpeedometer
//
//  Created by satoshi.namai on 2014/07/13.
//  Copyright (c) 2014年 ainame. All rights reserved.
//

#import "AMESpeedmeterTimer.h"

@implementation AMESpeedmeterTimer

- (void)start
{
    _startDatetime = [NSDate date];
}

- (void)finish
{
    _finishDatetime = [NSDate date];
}

@end
