//
//  NSDate+NSDateAddition.m
//  HotelReservation
//
//  Created by Huang Yuqing on 5/21/13.
//
//

#import <Foundation/Foundation.h>
#import "NSDate+NSDateAddition.h"

@implementation NSDate (NSDateAddition)

//- (id)initWithDateStrOnlyCareIfWeekday:(NSString *)dateStr {
//    self = [super init];
//    if (self) {
//        isWeekday = [self isWeekdayFor:dateStr];
//    }
//    return self;
//}

- (BOOL)isWeekdayFor:(NSString *)dateStr {
    for (NSString *flag in @[@"sat", @"sun"]) {
        if([dateStr rangeOfString:flag].length > 0) {
            return NO;
        }
    }
    return YES;
}
@end
