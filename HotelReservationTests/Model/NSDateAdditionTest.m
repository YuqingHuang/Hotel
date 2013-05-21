//
//  NSDateAdditionTest.m
//  HotelReservation
//
//  Created by Huang Yuqing on 5/21/13.
//
//

#import "NSDateAdditionTest.h"
#import "NSDate+NSDateAddition.h"

@implementation NSDateAdditionTest

- (void)test_should_be_weekday_according_to_dateStr {
    NSDate *date = [[NSDate alloc] init];
    STAssertTrue([date isWeekdayFor:@"16mar2009(mon)"], @"mon should be weekday");
}

- (void)test_should_not_be_weekday_according_to_dateStr {
    NSDate *date = [[NSDate alloc] init];
    STAssertFalse([date isWeekdayFor:@"22mar2009(sun)"], @"sun should not be weekday");
}
@end
