//
//  AMEAspectSpeedometer.m
//  AMEAspectSpeedometer
//
//  Created by satoshi.namai on 2014/07/13.
//  Copyright (c) 2014年 ainame. All rights reserved.
//

#import "AMEAspectSpeedometer.h"

@implementation AMEAspectSpeedometer

- (id<AspectToken>)measureWithName:(NSString *)name
                            target:(id)target
                            around:(SEL)selector
                  usingReportBlock:(void (^)(AMESpeedometerReport *))reportBlock
{
    AMESpeedometer *speedometer = [[AMESpeedometer alloc] initWithReportName:name];
    return [target aspect_hookSelector:selector
                           withOptions:AspectPositionInstead
                            usingBlock:^(id<AspectInfo> aspectInfo) {
                                NSInvocation *invocation = aspectInfo.originalInvocation;
                                [speedometer start];
                                [invocation invoke];
                                [speedometer finish];
                                reportBlock([speedometer report]);
                            } error:nil];
}

- (NSArray *)measureWithName:(NSString *)name
                      target:(id)target
                       start:(SEL)startSelector
                      finish:(SEL)finishSelector
            usingReportBlock:(void (^)(AMESpeedometerReport *))reportBlock
{
    AMESpeedometer *speedometer = [[AMESpeedometer alloc] initWithReportName:name];
    id<AspectToken> beforeToken = [target aspect_hookSelector:startSelector
                                                  withOptions:AspectPositionBefore
                                                   usingBlock:^(id<AspectInfo> aspectInfo) { [speedometer start]; }
                                                        error:nil];

    id<AspectToken> afterToken = [target aspect_hookSelector:finishSelector
                                                 withOptions:AspectPositionAfter
                                                  usingBlock:^(id<AspectInfo> aspectInfo) {
                                                      [speedometer finish];
                                                      reportBlock([speedometer report]);
                                                  } error:nil];
    return @[ beforeToken, afterToken ];
}

@end
