//
//  AMEViewController.m
//  AMEAspectSpeedometer
//
//  Created by ainame on 07/13/2014.
//  Copyright (c) 2014 ainame. All rights reserved.
//

#import "AMEViewController.h"
#import "AMESpeedometer.h"

@interface AMEViewController ()
@property (weak, nonatomic) IBOutlet UIButton *start;
@property (weak, nonatomic) IBOutlet UIButton *finish;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (nonatomic, strong) AMESpeedometer *speedometer;
@end

@implementation AMEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _speedometer = [[AMESpeedometer alloc] initWithReportName:@"stop watch"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapStartButton:(UIButton *)sender
{
    [_speedometer start];
}

- (IBAction)tapFinishButton:(id)sender
{
    [_speedometer finish];
    AMESpeedometerReport *report = [_speedometer report];
    self.label.text = [NSString stringWithFormat:@"elapsed time: %f", report.elapsedTime];
}

@end
