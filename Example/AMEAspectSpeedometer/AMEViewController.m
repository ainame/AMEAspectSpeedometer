//
//  AMEViewController.m
//  AMEAspectSpeedometer
//
//  Created by ainame on 07/13/2014.
//  Copyright (c) 2014 ainame. All rights reserved.
//

#import "AMEViewController.h"
#import <AMEAspectSpeedometer.h>

@interface AMEViewController ()
@property (weak, nonatomic) IBOutlet UIButton *start;
@property (weak, nonatomic) IBOutlet UIButton *finish;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, strong) AMESpeedometer *speedometer;
@property (nonatomic, strong) AMEAspectSpeedometer *aspectSpeedometer;
@end

@implementation AMEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _aspectSpeedometer = [AMEAspectSpeedometer new];
    [_aspectSpeedometer measureWithName:@"test return primitive value"
                                 target:self
                                 around:@selector(returnInteger)
                       usingReportBlock:^(AMESpeedometerReport *report) { NSLog(@"%@", report); }];
    [_aspectSpeedometer measureWithName:@"test return object value"
                                 target:self
                                 around:@selector(returnNumber)
                       usingReportBlock:^(AMESpeedometerReport *report) { NSLog(@"%@", report); }];
    [_aspectSpeedometer measureWithName:@"test tap start and finish"
                                 target:self
                                  start:@selector(tapStartButton:)
                                 finish:@selector(tapFinishButton:)
                       usingReportBlock:^(AMESpeedometerReport *report) {
                           NSLog(@"%@", report);
                           self.label.text = [NSString stringWithFormat:@"elapsed time: %f", report.elapsedTime];
                       }];
    NSLog(@"%ld, %@", (long)[self returnInteger], [self returnNumber]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)returnInteger
{
    return 1;
}

- (NSNumber *)returnNumber
{
    return @1;
}

- (IBAction)tapStartButton:(UIButton *)sender
{
    self.label.text = @"it started.";
}

- (IBAction)tapFinishButton:(id)sender
{
    NSLog(@"tapped!");
}

@end
