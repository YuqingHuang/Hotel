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
    STAssertEquals([date getDateTypeFor:@"16mar2009(mon)"], WEEKDAY, @"mon should be weekday");
}

- (void)test_should_be_weekend_according_to_dateStr {
    NSDate *date = [[NSDate alloc] init];
    STAssertEquals([date getDateTypeFor:@"22mar2009(sun)"], WEEKEND, @"mon should be weekday");
}
@end
