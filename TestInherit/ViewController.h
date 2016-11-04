//
//  ViewController.h
//  TestInherit
//
//  Created by liujing on 16/11/4.
//  Copyright © 2016年 liujing. All rights reserved.
//

#import <UIKit/UIKit.h>
//因如果Model<SomeDelegate> import了"ViewController.h"会引起互相引用 编译不通过
//所以此处不用#import 在.m里import
@class Model;

@protocol SomeDelegate <NSObject>
- (void)someMethod;
@end


@interface ViewController : UIViewController
@property (nonatomic,weak) id <SomeDelegate> sdelegate;
@property (nonatomic ,strong) Model *model;//只有@property才会被继承 而不是弄成成员变量（私有）
@end

