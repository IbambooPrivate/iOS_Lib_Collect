//
//  TheMessageViewController.m
//  自定义聊天键盘
//
//  Created by 茹茹想 on 16/7/27.
//  Copyright © 2016年 RuXiang&YangTao. All rights reserved.
//


#import "ViewController.h"
#import "LayoutTextView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *infoLable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    CGFloat layoutTextHeight = 44;
    LayoutTextView *layoutTextView = [[LayoutTextView alloc] initWithFrame:CGRectMake(0, Main_Screen_Height-layoutTextHeight, Main_Screen_Width, layoutTextHeight)];
//    layoutTextView.placeholder = @"评论";
    [self.view addSubview:layoutTextView];
    
    [layoutTextView setSendBlock:^(UITextView *textView) {
        _infoLable.text = textView.text;
        NSLog(@"%@",_infoLable.text);
    }];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
