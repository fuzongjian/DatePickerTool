//
//  NSDate+Extension.h
//  FZJDemo
//
//  Created by fdkj0002 on 16/3/17.
//  Copyright © 2016年 FZJ.com. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM (NSInteger,DateType){
    /**
     *  获取全部 年 月 日 时 分 秒
     */
    DateTypeAll = 0,
    
    /**
     *  只获取 年 月 日 时 分
     */
    DateTypeYearToMinute = 1,
    
    /**
     *  只获取 年 月 日 时
     */
    DateTypeYearToHour = 2,
    
    /**
     *  只获取 年 月 日
     */
    DateTypeYearToDay = 3,
    
    /**
     *  只获取 年 月
     */
    DateTypeYearToMonth = 4,
    
    /**
     *  只获取 月 日 时 分 秒
     */
    DateTypeMonthToSecond = 5,
    
    /**
     *  只获取 月 日 时 分
     */
    DateTypeMonthToMinute = 6,
    
    /**
     *  只获取 月 日 时
     */
    DateTypeMonthToHour = 7,
    
    /**
     *  只获取 月 日
     */
    DateTypeMonthToDay = 8,
    
    /**
     *  只获取 日 时 分 秒
     */
    DateTypeDayToSecond = 9,
    
    /**
     *  只获取 日 时 分
     */
    DateTypeDayToMinute = 10,
    
    /**
     *  只获取 日 时
     */
    DateTypeDayToHour = 11,
    
    /**
     *  只获取 时 分 秒
     */
    DateTypeHourToSecond = 12,
    
    /**
     *  只获取 时 分
     */
    DateTypeHourToMinute = 13,
    
    /**
     *  只获取 分 秒
     */
    DateTypeMinuteToSecond = 14,
};
@interface NSDate (Extension)
/**
 *  获取字符串格式的当前日期
 *
 *  @param dateType 日期格式类型
 *
 *  @return 字符串格式的当前日期
 */
+ (NSString *)getNowDateStringWithDateType:(DateType )dateType;
/**
 *  获取字符串格式的当前年
 *
 *  @return 字符串格式的当前年
 */
+ (NSString *)getNowYearString;
/**
 *  获取字符串格式的当前月
 *
 *  @return 字符串格式的当前月
 */
+ (NSString *)getNowMonthString;
/**
 *  获取字符串格式的当前日
 *
 *  @return 字符串格式的当前日
 */
+ (NSString *)getNowDayString;
/**
 *  获取字符串格式的当前时
 *
 *  @return 字符串格式的当前时
 */
+ (NSString *)getNowHourString;
/**
 *  获取字符串格式的当前分
 *
 *  @return 字符串格式的当前分
 */
+ (NSString *)getNowMinuteString;
/**
 *  获取字符串格式的当前秒
 *
 *  @return 字符串格式的当前秒
 */
+ (NSString *)getNowSecondString;

/**
 *  获取当前时间的时间戳
 *
 *  @return 字符串格式的时间戳
 */
+(NSString *)getNowTimeSp;
/***************************************************************/
/**
 *  获取字符串格式的日期
 *
 *  @param dateType 日期格式类型
 *
 *  @return 字符串格式的日期
 */
- (NSString *)getDateStringWithDateType:(DateType )dateType;
/**
 *  获取字符串格式的年
 *
 *  @return 字符串格式的年
 */
- (NSString *)getYearString;
/**
 *  获取字符串格式的月
 *
 *  @return 字符串格式的月
 */
- (NSString *)getMonthString;
/**
 *  获取字符串格式的日
 *
 *  @return 字符串格式的日
 */
- (NSString *)getDayString;
/**
 *  获取字符串格式的时
 *
 *  @return 字符串格式的时
 */
- (NSString *)getHourString;
/**
 *  获取字符串格式的分
 *
 *  @return 字符串格式的分
 */
- (NSString *)getMinuteString;
/**
 *  获取字符串格式的秒
 *
 *  @return 字符串格式的秒
 */
- (NSString *)getSecondString;
@end
