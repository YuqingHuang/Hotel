//
//  NSDate+NSDateAddition.m
//  HotelReservation
//
//  Created by Huang Yuqing on 5/21/13.
//
//

#import "NSDate+NSDateAddition.h"

@implementation NSDate (NSDateAddition)
                                                     //complete the init method
//- (id)initWithDateStrOnlyCareIfWeekday:(NSString *)dateStr {
//    self = [super init];
//    if (self) {
//        isWeekday = [self isWeekdayFor:dateStr];
//    }
//    return self;
//}

- (enum DateType)getDateTypeFor:(NSString *)dateStr {
    for (NSString *flag in @[@"sat", @"sun"]) {
        if([dateStr rangeOfString:flag].length > 0) {
            return WEEKEND;
        }
    }
    return WEEKDAY;
}
@end
