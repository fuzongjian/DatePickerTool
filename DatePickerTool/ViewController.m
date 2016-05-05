//
//  ViewController.m
//  DatePickerTool
//
//  Created by 陈舒澳 on 16/5/5.
//  Copyright © 2016年 speeda. All rights reserved.
//

#import "ViewController.h"
#import "DatePickerView.h"
@interface ViewController ()<SelectedDateDelegate>
@property (weak, nonatomic) IBOutlet UILabel *dateDisplayLable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)buttonClicked:(id)sender {
    
    DatePickerView * picker = [[DatePickerView alloc] initWithFrame:self.view.bounds];
    picker.delegate = self;
    picker.SelectedFormatter = SelectedDateFormatter_HM;
    picker.SelectedDisplayType = SelectedDateDisplayTypeDefault;
    picker.SelectingPickerMode = SelectingDatePickerModeDateAndTime;
    picker.isForward = NO;

//    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"]; // 这里是用大写的 H
//    NSDate * selectDate = [dateFormatter dateFromString:@""];
//    picker.SelectedDate = selectDate;
    
    [self.view addSubview:picker];
    
}
- (void)DatePickerView:(DatePickerView *)pickerView WithSelctedDateString:(NSString *)dateString{
    self.dateDisplayLable.text = dateString;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
