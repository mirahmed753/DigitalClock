//
//  ViewController.h
//  DigitalClock
//
//  Created by Mir M. Ahmed on 10/21/18.
//  Copyright © 2018 Mir M. Ahmed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *timer;
}

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *settingsButton;
@property (weak, nonatomic) IBOutlet UIView *settingsView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *clockColor;
@property (weak, nonatomic) IBOutlet UISegmentedControl *backgroundColor;

- (IBAction)clockSeg:(id)sender;
- (IBAction)backgroundSeg:(id)sender;
- (IBAction)settings:(id)sender;


@end

