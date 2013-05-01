//
//  Alarm.m
//  SnoozeTabs
//
//  Created by Matthew McHugh on 5/1/13.
//  Copyright (c) 2013 Matthew McHugh. All rights reserved.
//

#import "Alarm.h"

@implementation Alarm

@synthesize alarmTitle;
@synthesize hour;
@synthesize minute;
@synthesize isAM;
@synthesize alarmAsDate;

- (id) initWithTitle: (NSString *) newTitle andHour: (int) newHour andMinute: (int) newMinute AndAMStatus: (BOOL) am {
    if(self = [super init]) {
        [self setHour:newHour];
        [self setMinute:newMinute];
        [self setAlarmTitle:newTitle];
        [self setIsAM:am];
    }
    return self;
}

- (id) initWithHour: (int) newHour andMinute: (int) newMinute AndAMStatus: (BOOL) am {
    if(self = [super init]) {
        [self setHour:newHour];
        [self setMinute:newMinute];
        [self setIsAM:am];
    }
    return self;
}

- (id) initWithDate: (NSDate *) newDate{
    if(self = [super init]) {
        [self setAlarmAsDate:newDate];
    }
    return self;
}

- (void) convertToDate {
    //alarmAsDate =
    NSDate *today = [NSDate date];
    NSLog(@"Date/Time: %@", today);
}

@end
