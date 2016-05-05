//
//  DatePickerView.m
//  FZJDemo
//
//  Created by fdkj0002 on 16/3/17.
//  Copyright © 2016年 FZJ.com. All rights reserved.
//

#import "DatePickerView.h"
@interface DatePickerView()
@property(nonatomic,strong)UIButton * backgroundBtn;
@property(nonatomic,retain)UIDatePicker * DatePicker;
@end
@implementation DatePickerView
-(instancetype)initWithFrame:(CGRect)frame{
    if (self == [super initWithFrame:frame]) {
        
        //背景按钮
        _backgroundBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        _backgroundBtn.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        [_backgroundBtn addTarget:self action:@selector(backgroundBtnClicked) forControlEvents:UIControlEventTouchUpInside];
        _backgroundBtn.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.6];
        [self addSubview:_backgroundBtn];
        
              //滚轮设置
        _DatePicker = [[UIDatePicker alloc] init];
        _DatePicker.frame = CGRectMake(0, self.frame.size.height - _DatePicker.frame.size.height - 44 + 20, self.frame.size.width, 200);
        _DatePicker.backgroundColor = [UIColor whiteColor];
        _DatePicker.datePickerMode = UIDatePickerModeTime;
        _DatePicker.locale = [NSLocale currentLocale];
        [_DatePicker setTimeZone:[NSTimeZone defaultTimeZone]];
        [_backgroundBtn addSubview:_DatePicker];
        
        
   
        
        //取消按钮
        UIButton * cancle = [UIButton buttonWithType:UIButtonTypeSystem];
        cancle.frame = CGRectMake(0, _DatePicker.frame.origin.y + _DatePicker.frame.size.height, self.frame.size.width / 2, 44);
        [cancle setTitle:@"取消" forState:UIControlStateNormal];
        cancle.backgroundColor = [UIColor whiteColor];
        [cancle setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [cancle addTarget:self action:@selector(backgroundBtnClicked) forControlEvents:UIControlEventTouchUpInside];
        cancle.layer.borderColor = [UIColor blackColor].CGColor;
        cancle.layer.borderWidth = 0.5;
        [_backgroundBtn addSubview:cancle];
        
        //确定按钮
        UIButton * sure = [UIButton buttonWithType:UIButtonTypeSystem];
        sure.frame = CGRectMake(self.frame.size.width / 2, _DatePicker.frame.origin.y + _DatePicker.frame.size.height, self.frame.size.width/2, 44);
        [sure addTarget:self action:@selector(sureBtnClicked) forControlEvents:UIControlEventTouchUpInside];
        sure.backgroundColor = [UIColor whiteColor];
        [sure setTitle:@"确定" forState:UIControlStateNormal];
        [sure setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        sure.layer.borderColor = [UIColor grayColor].CGColor;
        sure.layer.borderWidth = 0.5;
        [_backgroundBtn addSubview:sure];
        
        
        self.isForward = YES;
        
    }
    return self;
}
-(void)backgroundBtnClicked{
    [self removeFromSuperview];
}
-(void)sureBtnClicked{
    __weak __typeof(self) weakSelf = self;
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    void(^defalut)(void) = ^{
        switch (weakSelf.SelectedFormatter) {
            case SelectedDateFormatterDefalut:
                [formatter setDateFormat:@"yyyy-MM-dd"];
                break;
            case SelectedDateFormatter_H:
                [formatter setDateFormat:@"yyyy-MM-dd HH"];
                break;
            case SelectedDateFormatter_HM:
                [formatter setDateFormat:@"yyyy-MM-dd HH:mm"];
                break;
            case SelectedDateFormatter_HMS:
                [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
                break;
            default:
                break;
        }
        
    };
    void(^normal)(void) = ^{
        switch (weakSelf.SelectedFormatter) {
            case SelectedDateFormatterDefalut:
                [formatter setDateFormat:@"yyyy年MM月dd日"];
                break;
            case SelectedDateFormatter_H:
                [formatter setDateFormat:@"yyyy年MM月dd日 HH时"];
                break;
            case SelectedDateFormatter_HM:
                [formatter setDateFormat:@"yyyy年MM月dd日 HH时mm分"];
                break;
            case SelectedDateFormatter_HMS:
                [formatter setDateFormat:@"yyyy年MM月dd日 HH时mm分ss秒"];
                break;
            default:
                break;
        }
    };
    switch (self.SelectedDisplayType) {
        case SelectedDateDisplayTypeDefault:
            defalut();
            break;
        case SelectedDateDisplayTypeNormal:
            normal();
            break;
        default:
            break;
    }
    NSString * dateStr = [formatter stringFromDate:_DatePicker.date];
    _DatePicker.date = [formatter dateFromString:dateStr];
    if ([self.delegate conformsToProtocol:@protocol(SelectedDateDelegate)] && [self.delegate respondsToSelector:@selector(DatePickerView:WithSelctedDateString:)]) {
        [self.delegate DatePickerView:self WithSelctedDateString:dateStr];
    }
    [self backgroundBtnClicked];
}
-(void)setSelectedDate:(NSDate *)SelectedDate{
    if (SelectedDate != nil) {
        _DatePicker.date = SelectedDate;
    }
}
-(void)setSelectingPickerMode:(SelectingDatePickerMode)SelectingPickerMode{
    UIDatePickerMode(^pickMode)(SelectingDatePickerMode) = ^(SelectingDatePickerMode datePickMode){
        switch (datePickMode) {
            case SelectingDatePickerModeTime:
                return UIDatePickerModeTime;
            case SelectingDatePickerModeDate:
                return UIDatePickerModeDate;
            case SelectingDatePickerModeDateAndTime:
                return UIDatePickerModeDateAndTime;
            case SelectingDatePickerModeCountDownTimer:
                return UIDatePickerModeCountDownTimer;
            default:
                break ;
        }
    };
    _DatePicker.datePickerMode = pickMode(SelectingPickerMode);
}
-(void)setSelectingMinuteInterval:(NSInteger)SelectingMinuteInterval{
    if (SelectingMinuteInterval < 0 || SelectingMinuteInterval > 30) {
        _DatePicker.minuteInterval = 1;
    }else{
        _DatePicker.minuteInterval = SelectingMinuteInterval;
    }
}
- (void)setIsForward:(BOOL)isForward{
    if (!isForward) {
        NSDate *datebefor = [_DatePicker.date dateByAddingTimeInterval:0.0];
        _DatePicker.minimumDate = datebefor;
    }
}
@end
