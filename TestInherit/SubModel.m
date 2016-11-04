//
//  SubModel.m
//  TestInherit
//
//  Created by liujing on 16/11/4.
//  Copyright © 2016年 liujing. All rights reserved.
//

#import "SubModel.h"

@implementation SubModel
#pragma - SomeDelegate 
//如果不重写则会调用父类的此方法
- (void)someMethod
{
    //当Model import了ViewController并<SomeDelegate>时可以直接用super调用delegate方法
    [super someMethod];
    
    //不管有无import 并<>delegate 用下面的方法都崩溃 因调用的其实是self的此方法 死循环
    //参考：http://www.cnblogs.com/MythYsJh/p/super-perform-selector.html
//    if ([super respondsToSelector:@selector(someMethod)]) {
//        [super performSelector:@selector(someMethod)];
//    }
    
    NSLog(@"SubModel---------someMethod called in SubModel");
}
@end
