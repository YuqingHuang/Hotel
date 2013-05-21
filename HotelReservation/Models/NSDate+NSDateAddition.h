//
//  NSDate+NSDateAddition.h
//  HotelReservation
//
//  Created by Huang Yuqing on 5/21/13.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (NSDateAddition)

//- (id)initWithDateStrOnlyCareIfWeekday:(NSString *)dateStr;

- (BOOL)isWeekdayFor:(NSString *)dateStr;

@end
