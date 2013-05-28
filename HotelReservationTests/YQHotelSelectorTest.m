//
// Created by twer on 5/21/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "YQHotelSelectorTest.h"
#import "YQLakewoodHotel.h"
#import "YQHotelSelector.h"


@implementation YQHotelSelectorTest

- (void)test_should_choose_the_cheaper_hotel_on_weekday {
    YQHotelSelector *selector = [[YQHotelSelector alloc] init];
    NSString *selectResult = [selector selectTheCheapestHotelWithCustomerType:REGULARCUSTOMER WithDays:@[@"20Mar2009(fri)"]];

    STAssertEqualObjects(selectResult, @"Lakewood", nil);
}

- (void)test_should_choose_the_cheaper_hotel_on_weekend {
    YQHotelSelector *selector = [[YQHotelSelector alloc] init];
    NSString *selectResult = [selector selectTheCheapestHotelWithCustomerType:REGULARCUSTOMER WithDays:@[@"21Mar2009(sat)"]];

    STAssertEqualObjects(selectResult, @"Bridgewood", nil);
}

- (void)test_should_choose_the_cheaper_hotel_for_reward_customer_on_weekend {
    YQHotelSelector *selector = [[YQHotelSelector alloc] init];
    NSString *selectResult = [selector selectTheCheapestHotelWithCustomerType:REWARDCUSTOMER WithDays:@[@"21Mar2009(sat)"]];

    STAssertEqualObjects(selectResult, @"Ridgewood", nil);
}

- (void)test_should_choose_the_cheaper_hotel_on_several_days {
    YQHotelSelector *selector = [[YQHotelSelector alloc] init];
    //handler the input string in one place
    NSString *selectResult = [selector selectTheCheapestHotelWithCustomerType:REGULARCUSTOMER WithDays:@[@"20Mar2009(fri)", @"21Mar2009(sat)", @"22Mar2009(sun)"]];

    STAssertEqualObjects(selectResult, @"Bridgewood", nil);
}

- (void)test_should_choose_the_cheaper_hotel_for_reward_customer_on_several_days {
    //handler the input string in one place
    YQHotelSelector *selector = [[YQHotelSelector alloc] init];
    NSString *selectResult = [selector selectTheCheapestHotelWithCustomerType:REWARDCUSTOMER WithDays:@[@"26Mar2009(thur)", @"27Mar2009(fri)", @"28Mar2009(sat)"]];

    STAssertEqualObjects(selectResult, @"Ridgewood", nil);
}
@end