//
//  AddAlarmViewController.m
//  SnoozeTabs
//
//  Created by Matthew McHugh on 4/30/13.
//  Copyright (c) 2013 Matthew McHugh. All rights reserved.
//

#import "AddAlarmViewController.h"

#import "Alarm.h"
#import "FirstViewController.h"

@interface AddAlarmViewController ()

@end

@implementation AddAlarmViewController

@synthesize alarmTimePicker;
@synthesize theAlarmListController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelButtonPressed:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)doneButtonPressed:(id)sender {
    NSLog(@"Done button pressed");
    NSDate *datePicked = self.alarmTimePicker.date;
    NSLog(@"%@", datePicked);
    Alarm *alarmFromDate = [[Alarm alloc] initWithDate:datePicked];
    [theAlarmListController addAlarmToList:alarmFromDate];
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
