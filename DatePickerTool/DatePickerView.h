//
//  DatePickerView.h
//  FZJDemo
//
//  Created by fdkj0002 on 16/3/17.
//  Copyright © 2016年 FZJ.com. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DatePickerView;
@protocol SelectedDateDelegate <NSObject>
-(void)DatePickerView:(DatePickerView *)pickerView WithSelctedDateString:(NSString *)dateString;
@end
/************************选择后的时间格式索取******************************/
typedef NS_ENUM (NSInteger,SelectedDateFormatter){
    /**年月日*/
    SelectedDateFormatterDefalut,
    /**年月日 小时*/
    SelectedDateFormatter_H,
    /**年月日 小时 分钟*/
    SelectedDateFormatter_HM,
    /**年月日  小时 分钟  秒*/
    SelectedDateFormatter_HMS,
};
typedef NS_ENUM(NSInteger,SelectedDateDisplayType){
    /**2016-03-18*/
    SelectedDateDisplayTypeDefault,
    /**2016年03月18日*/
    SelectedDateDisplayTypeNormal,
};
/************************时间选择滚轮显示******************************/
typedef NS_ENUM(NSInteger,SelectingDatePickerMode){
    /** 只显示时间*/
    SelectingDatePickerModeTime,
     /** 一般是做生日选择（年月日）*/
    SelectingDatePickerModeDate,
     /** 月 日 星期  确切时间*/
    SelectingDatePickerModeDateAndTime,
     /** 小时  分 */
    SelectingDatePickerModeCountDownTimer,
};
@interface DatePickerView : UIView
/** 设置时间选择器当前时间*/
@property(nonatomic,retain)NSDate * SelectedDate;
@property(nonatomic,retain)id<SelectedDateDelegate>delegate;
/** 最终要得到的时间格式*/
@property(nonatomic,assign)SelectedDateFormatter SelectedFormatter;
/** 时间格式是否包括年月日汉字*/
@property(nonatomic,assign)SelectedDateDisplayType SelectedDisplayType;
/** 滚轮时间显示格式*/
@property(nonatomic,assign)SelectingDatePickerMode SelectingPickerMode;
/** 是否允许选择过去的时间 默认 YES*/
@property (nonatomic,assign) BOOL  isForward;
/** 分钟显示间隔  默认1秒*/
@property(nonatomic,assign)NSInteger SelectingMinuteInterval;
@end
