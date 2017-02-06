//
//  ViewController.h
//  ReverseValue
//
//  Created by ybb on 2017/2/6.
//  Copyright © 2017年 ybb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//公开一个方法，此方法通过一个参数来接受B发消息时回传的值
- (void)valueViewControllerDidInput:(NSString *)msg;

@end

