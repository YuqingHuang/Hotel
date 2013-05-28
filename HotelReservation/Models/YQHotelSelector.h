//
// Created by twer on 5/22/13.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "YQHotel.h"


@interface YQHotelSelector : YQHotel

//- (NSString *)selectTheCheapestHotelWithCustomerType:(enum CustomerType)customer WithDateType:(enum DateType)date;
- (NSString *)selectTheCheapestHotelWithCustomerType:(enum CustomerType)customer WithDays:(NSArray *)days;

@end