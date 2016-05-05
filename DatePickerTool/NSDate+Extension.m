//
//  NSDate+Extension.m
//  FZJDemo
//
//  Created by fdkj0002 on 16/3/17.
//  Copyright © 2016年 FZJ.com. All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)
+ (NSString *)getNowDateStringWithDateType:(DateType )dateType;
{
    NSDate *NowDate = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSString *outputString = @"";
    
    if(dateType == DateTypeAll)
    {
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeYearToMinute)
    {
        formatter.dateFormat = @"yyyy-MM-dd HH:mm";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeYearToHour)
    {
        formatter.dateFormat = @"yyyy-MM-dd HH";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeYearToDay)
    {
        formatter.dateFormat = @"yyyy-MM-dd";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeYearToMonth)
    {
        formatter.dateFormat = @"yyyy-MM";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeMonthToSecond)
    {
        formatter.dateFormat = @"MM-dd HH:mm:ss";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeMonthToMinute)
    {
        formatter.dateFormat = @"MM-dd HH:mm";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeMonthToHour)
    {
        formatter.dateFormat = @"MM-dd HH";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeMonthToDay)
    {
        formatter.dateFormat = @"MM-dd";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeDayToSecond)
    {
        formatter.dateFormat = @"dd HH:mm:ss";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeDayToMinute)
    {
        formatter.dateFormat = @"dd HH:mm";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeDayToHour)
    {
        formatter.dateFormat = @"dd HH";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeHourToSecond)
    {
        formatter.dateFormat = @"HH:mm:ss";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeHourToMinute)
    {
        formatter.dateFormat = @"HH:mm";
        outputString = [formatter stringFromDate:NowDate];
    }
    else if(dateType == DateTypeMinuteToSecond)
    {
        formatter.dateFormat = @"mm:ss";
        outputString = [formatter stringFromDate:NowDate];
    }
    
    return outputString;
}

+ (NSString *)getNowYearString
{
    NSDate *NowDate = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy";
    NSString *outputString = [formatter stringFromDate:NowDate];
    
    return outputString;
}

+ (NSString *)getNowMonthString
{
    NSDate *NowDate = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"MM";
    NSString *outputString = [formatter stringFromDate:NowDate];
    
    return outputString;
}

+ (NSString *)getNowDayString
{
    NSDate *NowDate = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"dd";
    NSString *outputString = [formatter stringFromDate:NowDate];
    
    return outputString;
}

+ (NSString *)getNowHourString
{
    NSDate *NowDate = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"HH";
    NSString *outputString = [formatter stringFromDate:NowDate];
    
    return outputString;
}

+ (NSString *)getNowMinuteString
{
    NSDate *NowDate = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"mm";
    NSString *outputString = [formatter stringFromDate:NowDate];
    
    return outputString;
}

+ (NSString *)getNowSecondString
{
    NSDate *NowDate = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"ss";
    NSString *outputString = [formatter stringFromDate:NowDate];
    
    return outputString;
}
+(NSString *)getNowTimeSp{
    time_t now;
    time(&now);
    return [NSString stringWithFormat:@"%ld",now];
}

- (NSString *)getDateStringWithDateType:(DateType )dateType
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSString *outputString = @"";
    
    if(dateType == DateTypeAll)
    {
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeYearToMinute)
    {
        formatter.dateFormat = @"yyyy-MM-dd HH:mm";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeYearToHour)
    {
        formatter.dateFormat = @"yyyy-MM-dd HH";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeYearToDay)
    {
        formatter.dateFormat = @"yyyy年MM月dd日";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeYearToMonth)
    {
        formatter.dateFormat = @"yyyy-MM";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeMonthToSecond)
    {
        formatter.dateFormat = @"MM-dd HH:mm:ss";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeMonthToMinute)
    {
        formatter.dateFormat = @"MM-dd HH:mm";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeMonthToHour)
    {
        formatter.dateFormat = @"MM-dd HH";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeMonthToDay)
    {
        formatter.dateFormat = @"MM-dd";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeDayToSecond)
    {
        formatter.dateFormat = @"dd HH:mm:ss";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeDayToMinute)
    {
        formatter.dateFormat = @"dd HH:mm";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeDayToHour)
    {
        formatter.dateFormat = @"dd HH";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeHourToSecond)
    {
        formatter.dateFormat = @"HH:mm:ss";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeHourToMinute)
    {
        formatter.dateFormat = @"HH:mm";
        outputString = [formatter stringFromDate:self];
    }
    else if(dateType == DateTypeMinuteToSecond)
    {
        formatter.dateFormat = @"mm:ss";
        outputString = [formatter stringFromDate:self];
    }
    
    
    return outputString;
}

- (NSString *)getYearString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy";
    NSString *outputString = [formatter stringFromDate:self];
    
    return outputString;
}

- (NSString *)getMonthString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"MM";
    NSString *outputString = [formatter stringFromDate:self];
    
    return outputString;
}

- (NSString *)getDayString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"dd";
    NSString *outputString = [formatter stringFromDate:self];
    
    return outputString;
}

- (NSString *)getHourString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"HH";
    NSString *outputString = [formatter stringFromDate:self];
    
    return outputString;
}

- (NSString *)getMinuteString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"mm";
    NSString *outputString = [formatter stringFromDate:self];
    
    return outputString;
}

- (NSString *)getSecondString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"ss";
    NSString *outputString = [formatter stringFromDate:self];
    
    return outputString;
}

@end
