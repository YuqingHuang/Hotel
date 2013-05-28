//
// Created by twer on 5/22/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "YQHotelSelector.h"
#import "YQLakewoodHotel.h"
#import "YQBridgewoodHotel.h"
#import "YQRidgewoodHotel.h"


@implementation YQHotelSelector

/*- (NSString *)selectTheCheapestHotelWithCustomerType:(enum CustomerType)customer WithDateType:(enum DateType)date {
    YQLakewoodHotel *lakewood = [[YQLakewoodHotel alloc] init];
    int costOfLakewood = [lakewood calculateCostWithCustomType:customer withDateType:date] + [lakewood ratingRatio];

    YQBridgewoodHotel *bridgewood = [[YQBridgewoodHotel alloc] init];
    int costOfBridgewoodHotel = [bridgewood calculateCostWithCustomType:customer withDateType:date] + [bridgewood ratingRatio];

    YQRidgewoodHotel *ridgewood = [[YQRidgewoodHotel alloc] init];
    int costOfRidgewoodHotel = [ridgewood calculateCostWithCustomType:customer withDateType:date] + [ridgewood ratingRatio];
}*/

- (NSString *)selectTheCheapestHotelWithCustomerType:(enum CustomerType)customer WithDays:(NSArray *)days {
    YQLakewoodHotel *lakewood = [[YQLakewoodHotel alloc] init];
    int costOfLakewood = [lakewood calculateCostWithCustomType:customer withDays:days] + [lakewood ratingRatio];

    YQBridgewoodHotel *bridgewood = [[YQBridgewoodHotel alloc] init];
    int costOfBridgewoodHotel = [bridgewood calculateCostWithCustomType:customer withDays:days] + [bridgewood ratingRatio];

    YQRidgewoodHotel *ridgewood = [[YQRidgewoodHotel alloc] init];
    int costOfRidgewoodHotel = [ridgewood calculateCostWithCustomType:customer withDays:days] + [ridgewood ratingRatio];

    if (costOfLakewood < costOfBridgewoodHotel && costOfLakewood < costOfRidgewoodHotel) return @"Lakewood";
    if (costOfBridgewoodHotel < costOfLakewood && costOfBridgewoodHotel < costOfRidgewoodHotel) return @"Bridgewood";
    if (costOfRidgewoodHotel < costOfLakewood && costOfRidgewoodHotel < costOfBridgewoodHotel) return @"Ridgewood";
}
@end