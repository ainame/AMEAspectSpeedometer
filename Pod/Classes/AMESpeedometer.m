//
//  AMESpeedometer.m
//  AMEAspectSpeedometer
//
//  Created by satoshi.namai on 2014/07/13.
//  Copyright (c) 2014年 ainame. All rights reserved.
//

#import "AMESpeedometer.h"
#import "AMESpeedmeterTimer.h"

@interface AMESpeedometer ()
@property (nonatomic, strong) NSString *reportName;
@property (nonatomic, strong) AMESpeedmeterTimer *timer;
@end

@implementation AMESpeedometer

- (instancetype)initWithReportName:(NSString *)reportName reportOptions:(AMESpeedometerReportOptions)reportOptions
{
    self = [super init];
    if (self) {
        _reportName = reportName;
        _timer = [AMESpeedmeterTimer new];
        _reportOptions = reportOptions;
    }
    return self;
}

- (void)start
{
    [_timer start];
}

- (void)finish
{
    [_timer finish];
}

- (AMESpeedometerReport *)report
{
    AMESpeedometerReport *report = [[AMESpeedometerReport alloc] initWithName:_reportName
                                                                startDatetime:_timer.startDatetime
                                                               finishDatetime:_timer.finishDatetime
                                                                         meta:@{}];
    if (_reportOptions & AMESpeedometerReportByConsole) {
        NSLog(@"%@", report);
    }

    return report;
}

@end
