//
//  AMESpeedometerReport.h
//  AMEAspectSpeedometer
//
//  Created by satoshi.namai on 2014/07/13.
//  Copyright (c) 2014年 ainame. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMESpeedometerReport : NSObject <NSCopying>

- (instancetype)initWithName:(NSString *)name
               startDatetime:(NSDate *)startDatetime
              finishDatetime:(NSDate *)finishDatetime
                        meta:(NSDictionary *)meta;

@property (nonatomic, strong, readonly) NSString *name;

@property (nonatomic, strong, readonly) NSDate *startDatetime;

@property (nonatomic, strong, readonly) NSDate *finishDatetime;

@property (nonatomic, strong, readonly) NSDictionary *meta;

@property (nonatomic, assign, readonly) NSTimeInterval elapsedTime;

@end
