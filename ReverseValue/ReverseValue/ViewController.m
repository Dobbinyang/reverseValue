//
//  ViewController.m
//  ReverseValue
//
//  Created by ybb on 2017/2/6.
//  Copyright © 2017年 ybb. All rights reserved.
//

#import "ViewController.h"
#import "ValueViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *valueLabel;

@property (nonatomic, strong) UIButton *nextBtn;

@end

@implementation ViewController

- (UILabel *)valueLabel
{
    if (_valueLabel == nil) {
        _valueLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
        _valueLabel.backgroundColor = [UIColor greenColor];
    }
    return _valueLabel;
}

- (UIButton *)nextBtn
{
    if (_nextBtn == nil) {
        _nextBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 160, 100, 50)];
        [_nextBtn setTitle:@"下一步" forState:UIControlStateNormal];
        _nextBtn.backgroundColor = [UIColor greenColor];
    }
    return _nextBtn;
}

//实现公开的方法，在方法内，完成传入的参数的显示
- (void)valueViewControllerDidInput:(NSString *)msg
{
    self.valueLabel.text = msg;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.title = @"值显示";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.valueLabel];
    
    [self.nextBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.nextBtn];
    
}

- (void)btnClick
{
    //创建ValueViewController的实例
    ValueViewController *VC = [[ValueViewController alloc] init];
    //在推出ValueViewController之前，将自己的引用告诉给ValueViewController，
    //等于当前控制器给要推出的ValueViewController留一个联系方式
    VC.viewVC = self;
    //推出ValueViewController
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
