//
//  AddAlarmViewController.h
//  SnoozeTabs
//
//  Created by Matthew McHugh on 4/30/13.
//  Copyright (c) 2013 Matthew McHugh. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FirstViewController;

@interface AddAlarmViewController : UIViewController
- (IBAction)cancelButtonPressed:(id)sender;
- (IBAction)doneButtonPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIDatePicker *alarmTimePicker;
@property FirstViewController *theAlarmListController;


@end
