//
//  Alarm.h
//  SnoozeTabs
//
//  Created by Matthew McHugh on 5/1/13.
//  Copyright (c) 2013 Matthew McHugh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Alarm : NSObject{
    
    
}

@property int hour;
@property int minute;
@property BOOL isAM;
@property NSString *alarmTitle;
@property NSDate *alarmAsDate;

-(id) initWithTitle: (NSString *) newTitle andHour: (int) newHour andMinute: (int) newMinute AndAMStatus: (BOOL) am;
- (id) initWithHour: (int) newHour andMinute: (int) newMinute AndAMStatus: (BOOL) am;
- (void) convertToDate;
- (id) initWithDate: (NSDate *) newDate;

@end
