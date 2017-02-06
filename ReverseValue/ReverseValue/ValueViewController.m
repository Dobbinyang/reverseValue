//
//  ValueViewController.m
//  ReverseValue
//
//  Created by ybb on 2017/2/6.
//  Copyright © 2017年 ybb. All rights reserved.
//

#import "ValueViewController.h"

@interface ValueViewController ()

@property (nonatomic, strong) UITextField *textField;

@property (nonatomic, strong) UIButton *valueBtn;

@end

@implementation ValueViewController

- (UITextField *)textField
{
    if (_textField == nil) {
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
        _textField.backgroundColor = [UIColor grayColor];
    }
    return _textField;
}

- (UIButton *)valueBtn
{
    if (_valueBtn == nil) {
        _valueBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 160, 100, 50)];
        _valueBtn.backgroundColor = [UIColor grayColor];
        [_valueBtn setTitle:@"反向传值" forState:UIControlStateNormal];
    }
    return _valueBtn;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"反向传值";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.textField];
    
    [self.valueBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.valueBtn];
}

- (void)btnClick
{
    //在返回前，借助于存储的ViewController的引用，给ViewController发消息
    [self.viewVC valueViewControllerDidInput:self.textField.text];
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
