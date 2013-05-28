//
// Created by twer on 5/22/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "YQRidgewoodHotel.h"


@implementation YQRidgewoodHotel
- (id)init {
    self = [super init];
    if (self) {
        self.rating = 5;
        self.costRateDic = @{
                @"rateForRegularCustomerAndWeekday" : @220,
                @"rateForRegularCustomerAndWeekend" : @150,
                @"rateForRewardCustomerAndWeekday" : @100,
                @"rateForRewardCustomerAndWeekend" : @40,
        };
    }

    return self;
}

@end