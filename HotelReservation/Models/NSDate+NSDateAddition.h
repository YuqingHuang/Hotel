//
//  NSDate+NSDateAddition.h
//  HotelReservation
//
//  Created by Huang Yuqing on 5/21/13.
//
//

#import <Foundation/Foundation.h>

enum DateType {
    WEEKDAY,
    WEEKEND
};

@interface NSDate (NSDateAddition)

//- (id)initWithDateStrOnlyCareIfWeekday:(NSString *)dateStr;

- (enum DateType)getDateTypeFor:(NSString *)dateStr;

@end
