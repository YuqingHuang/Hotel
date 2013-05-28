//
// Created by twer on 5/21/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "YQHotel.h"


@implementation YQHotel

//remove enum
- (int)calculateCostWithCustomType:(enum CustomerType)customer withDateType:(enum DateType)date {
    //use customer and date
    if (customer == REGULARCUSTOMER) {
        if (date == WEEKDAY) {
            return [self.costRateDic[@"rateForRegularCustomerAndWeekday"] intValue];
        }
        return [self.costRateDic[@"rateForRegularCustomerAndWeekend"] intValue];
    } else {
        if (date == WEEKDAY) {
            return [self.costRateDic[@"rateForRewardCustomerAndWeekday"] intValue];
        }
        return [self.costRateDic[@"rateForRewardCustomerAndWeekend"] intValue];
    }
}

- (int)calculateCostWithCustomType:(enum CustomerType)customer withDays:(NSArray *)days {
    NSDate *date = [[NSDate alloc] init];
    int cost = 0;
    for (NSString *aDay in days) {
        cost += [self calculateCostWithCustomType:customer withDateType:[date getDateTypeFor:aDay]];
    }
    return cost;
}

- (int)ratingRatio {
    return 10 - self.rating;
}

@end