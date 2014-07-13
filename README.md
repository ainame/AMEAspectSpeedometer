# AMEAspectSpeedometer

[![CI Status](http://img.shields.io/travis/ainame/AMEAspectSpeedometer.svg?style=flat)](https://travis-ci.org/ainame/AMEAspectSpeedometer)
[![Version](https://img.shields.io/cocoapods/v/AMEAspectSpeedometer.svg?style=flat)](http://cocoadocs.org/docsets/AMEAspectSpeedometer)
[![License](https://img.shields.io/cocoapods/l/AMEAspectSpeedometer.svg?style=flat)](http://cocoadocs.org/docsets/AMEAspectSpeedometer)
[![Platform](https://img.shields.io/cocoapods/p/AMEAspectSpeedometer.svg?style=flat)](http://cocoadocs.org/docsets/AMEAspectSpeedometer)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```objc
AMEAspectSpeedometer aspectSpeedometer = [AMEAspectSpeedometer new];
[aspectSpeedometer measureWithName:@"test"
                             target:self
                             around:@selector(returnNumber)
                   usingReportBlock:^(AMESpeedometerReport *report) { NSLog(@"%@", report); }];

[aspectSpeedometer measureWithName:@"test tap start and finish"
                             target:self
                              start:@selector(tapStartButton:)
                             finish:@selector(tapFinishButton:)
                   usingReportBlock:^(AMESpeedometerReport *report) {
                       NSLog(@"%@", report);
                       self.label.text = [NSString stringWithFormat:@"elapsed time: %f", report.elapsedTime];
                   }];
```

## Requirements

## Installation

AMEAspectSpeedometer is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "AMEAspectSpeedometer"

## Author

ainame, s.namai.09@gmail.com

## License

AMEAspectSpeedometer is available under the MIT license. See the LICENSE file for more info.
