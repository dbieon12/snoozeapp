//
//  FirstViewController.h
//  SnoozeTabs
//
//  Created by Matthew McHugh on 4/30/13.
//  Copyright (c) 2013 Matthew McHugh. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Alarm.h"

@class EditAlarmViewController;

@interface FirstViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property NSMutableArray *alarmList;
@property (weak, nonatomic) IBOutlet UITableView *alarmListTableView;
@property (strong, nonatomic) EditAlarmViewController *editAlarmViewController;

- (void) addAlarmToList: (Alarm *) pAlarm;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;

@end
