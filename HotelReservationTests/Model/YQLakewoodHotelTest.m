#import "YQLakewoodHotelTest.h"
#import "YQLakewoodHotel.h"

@implementation YQLakewoodHotelTest {
    YQLakewoodHotel *hotel;
}

- (void)setUp {
    hotel = [[YQLakewoodHotel alloc] init];
}


- (void)test_hotel_should_calculate_cost_with_regularCustomer_and_weekday  {

    NSLog(@"here:%d", REWARDCUSTOMER);
    int cost = [hotel calculateCostWithCustomType:REGULARCUSTOMER withDateType:WEEKDAY];

    int expectedCost = 110;
    STAssertEquals(cost, expectedCost, nil);
}

- (void)test_hotel_should_calculate_cost_with_rewardCustomer_and_weekday  {

    int cost = [hotel calculateCostWithCustomType:REWARDCUSTOMER withDateType:WEEKDAY];

    int expectedCost = 80;
    STAssertEquals(cost, expectedCost, nil);
}

- (void)test_hotel_should_calculate_cost_with_regularCustomer_and_weekend  {

    int cost = [hotel calculateCostWithCustomType:REGULARCUSTOMER withDateType:WEEKEND];
    int expectedCost = 90;

    STAssertEquals(cost, expectedCost, nil);
}

- (void)test_hotel_should_calculate_cost_with_rewardCustomer_and_weekend  {

    int cost = [hotel calculateCostWithCustomType:REWARDCUSTOMER withDateType:WEEKEND];
    int expectedCost = 80;

    STAssertEquals(cost, expectedCost, nil);
}
@end
