//
//  AMESpeedometer.h
//  AMEAspectSpeedometer
//
//  Created by satoshi.namai on 2014/07/13.
//  Copyright (c) 2014年 ainame. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AMESpeedometerReport.h"

@interface AMESpeedometer : NSObject

- (instancetype)initWithReportName:(NSString *)reportName;

- (void)start;

- (void)finish;

- (AMESpeedometerReport *)report;

@end
