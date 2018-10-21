//
//  ViewController.m
//  DigitalClock
//
//  Created by Mir M. Ahmed on 10/21/18.
//  Copyright © 2018 Mir M. Ahmed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // because there's a split second before the timer starts, we need to start the timer right away
    [self updateTime];
    
    // we need to update timer
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
    
    self.settingsView.hidden = YES;
    self.settingsButton.alpha = 0.25;
}

-(void)updateTime {
    // we have top use an NSDateFormatter to format the time and display it
    // in our label
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"hh:mm:ss"];
    
    self.label.text = [formatter stringFromDate:[NSDate date]];
}


- (IBAction)clockSeg:(id)sender {
    // change color to white
    if(self.clockColor.selectedSegmentIndex == 0) {
        self.label.textColor = [UIColor whiteColor];
    }
    
    // change color to black
    else if(self.clockColor.selectedSegmentIndex == 1) {
        self.label.textColor = [UIColor blackColor];
    }
    
    // change color to green
    else if (self.clockColor.selectedSegmentIndex == 2) {
        self.label.textColor = [UIColor greenColor];
    }
    
    // change color to red
    else if (self.clockColor.selectedSegmentIndex == 3) {
        self.label.textColor = [UIColor redColor];
    }
}



- (IBAction)backgroundSeg:(id)sender {
    // change color to black
    if(self.backgroundColor.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor blackColor];
    }
    
    // change color to white
    else if(self.backgroundColor.selectedSegmentIndex == 1) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    // change color to blue
    else if(self.backgroundColor.selectedSegmentIndex == 2) {
        self.view.backgroundColor = [UIColor blueColor];
    }
    
    // change color to yellow
    else if(self.backgroundColor.selectedSegmentIndex == 3) {
        self.view.backgroundColor = [UIColor yellowColor];
    }
}



- (IBAction)settings:(id)sender {
    if(self.settingsView.hidden == NO) {
        
        self.settingsView.hidden = YES;
        self.settingsButton.alpha = 0.25;
        [self.settingsButton setTitle:@"Show Settings" forState:UIControlStateNormal];
        
    }
    
    else {
        
        self.settingsView.hidden = NO;
        self.settingsButton.alpha = 1.0;
        [self.settingsButton setTitle:@"Hide Settings" forState:UIControlStateNormal];
    }
}
@end
