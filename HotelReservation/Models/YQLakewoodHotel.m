//
// Created by twer on 5/20/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "YQLakewoodHotel.h"


@implementation YQLakewoodHotel
- (id)init {
    self = [super init];
    if (self) {
        self.rating = 3;
        self.costRateDic = @{
                @"rateForRegularCustomerAndWeekday" : @110,
                @"rateForRegularCustomerAndWeekend" : @90,
                @"rateForRewardCustomerAndWeekday" : @80,
                @"rateForRewardCustomerAndWeekend" : @80,
        };
    }

    return self;
}

@end