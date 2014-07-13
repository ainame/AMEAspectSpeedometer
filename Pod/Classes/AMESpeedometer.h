//
//  AMESpeedometer.h
//  AMEAspectSpeedometer
//
//  Created by satoshi.namai on 2014/07/13.
//  Copyright (c) 2014年 ainame. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMESpeedometerReport.h"

typedef NS_OPTIONS(NSUInteger, AMESpeedometerReportOptions) {
    AMESpeedometerReportByConsole = 1 << 0,
};

@interface AMESpeedometer : NSObject

@property (nonatomic, assign, readonly) AMESpeedometerReportOptions reportOptions;

- (instancetype)initWithReportName:(NSString *)reportName reportOptions:(AMESpeedometerReportOptions)reportOptions;

- (void)start;

- (void)finish;

- (AMESpeedometerReport *)report;

@end
