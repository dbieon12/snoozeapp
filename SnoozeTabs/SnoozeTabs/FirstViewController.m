//
//  FirstViewController.m
//  SnoozeTabs
//
//  Created by Matthew McHugh on 4/30/13.
//  Copyright (c) 2013 Matthew McHugh. All rights reserved.
//

#import "FirstViewController.h"

#import "EditAlarmViewController.h"
#import "AddAlarmViewController.h"

@interface FirstViewController (){
}
@end

@implementation FirstViewController

@synthesize alarmList;
@synthesize alarmListTableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
    //[alarmListTableView numberOfRowsInSection:1];
    //self.editAlarmViewController = (EditAlarmViewController *)[[self.splitViewController.viewControllers lastObject] topViewController];
    
}

- (void) addAlarmToList: (Alarm *) pAlarm{
    if (!alarmList){
        alarmList = [[NSMutableArray alloc] init];
    }
    [alarmList insertObject:pAlarm atIndex:0];
    
    //Problem lines
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.alarmListTableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    //End problem lines
    NSLog(@"Alarm added at this time: %@", pAlarm.alarmAsDate);
}


// ---------------------


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return alarmList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    Alarm *object = alarmList[indexPath.row];
    //cell.textLabel.text = [object description];
    cell.textLabel.text = @"Test";
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [alarmList removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */
/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        Alarm *object = alarmList[indexPath.row];
        self.editAlarmViewController.alarmDetail = object;
    }
}*/

// ---------------------

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showAddAlarmVC"]) {
        AddAlarmViewController *nextVC = (AddAlarmViewController *)[segue destinationViewController];
        nextVC.theAlarmListController = self;
    }
}

- (void) updateTableView{
    
}


@end
