//
//  AMESpeedometerReport.m
//  AMEAspectSpeedometer
//
//  Created by satoshi.namai on 2014/07/13.
//  Copyright (c) 2014年 ainame. All rights reserved.
//

#import "AMESpeedometerReport.h"

@implementation AMESpeedometerReport

- (instancetype)initWithName:(NSString *)name
               startDatetime:(NSDate *)startDatetime
              finishDatetime:(NSDate *)finishDatetime
                        meta:(NSDictionary *)meta
{
    self = [super init];
    if (self) {
        _name = name;
        _startDatetime = startDatetime;
        _finishDatetime = finishDatetime;
        _meta = meta;
        _elapsedTime = [_finishDatetime timeIntervalSinceDate:_startDatetime];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"reportName: %@, elapsedTime: %f sec, meta: %@", _name, _elapsedTime, _meta];
}

- (instancetype)copyWithZone:(NSZone *)zone
{
    return [[self.class allocWithZone:zone] initWithName:[_name copyWithZone:zone]
                                           startDatetime:[_startDatetime copyWithZone:zone]
                                          finishDatetime:[_finishDatetime copyWithZone:zone]
                                                    meta:[_meta copyWithZone:zone]];
}

@end
