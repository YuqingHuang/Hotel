#import "YQHotelTest.h"
#import "YQHotel.h"

@implementation YQHotelTest

- (void)test_hotel_should_calculate_cost_with_one_date_string {
    YQHotel *hotel = [[YQHotel alloc] init];
    NSString *dateStr = @"16Mar2009(mon)";

    NSDate *date = [NSDate transferStr:dateStr];// NSDate category
    int cost = [hotel calculateCostWithDate:date];

    int expectedCost = 100;
    STAssertEquals(cost, expectedCost, [NSString stringWithFormat:@"the cost for %@ should be %d", date, cost], nil);
}

@end
