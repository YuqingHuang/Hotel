//
// Created by twer on 5/22/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "YQBridgewoodHotel.h"


@implementation YQBridgewoodHotel
- (id)init {
    self = [super init];
    if (self) {
        self.rating = 4;
        self.costRateDic = @{
                @"rateForRegularCustomerAndWeekday" : @160,
                @"rateForRegularCustomerAndWeekend" : @60,
                @"rateForRewardCustomerAndWeekday" : @110,
                @"rateForRewardCustomerAndWeekend" : @50,
        };
    }

    return self;
}

@end