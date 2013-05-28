//
// Created by twer on 5/21/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import "NSDate+NSDateAddition.h"
enum CustomerType {
    REGULARCUSTOMER,
    REWARDCUSTOMER
};

@interface YQHotel : NSObject

@property (nonatomic) int rating;
@property (nonatomic, strong) NSDictionary *costRateDic;

- (int)calculateCostWithCustomType:(enum CustomerType)customer withDateType:(enum DateType)date;
- (int)calculateCostWithCustomType:(enum CustomerType)customer withDays:(NSArray *)days;
- (int)ratingRatio;

@end