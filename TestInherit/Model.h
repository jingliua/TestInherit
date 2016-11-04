//
//  Model.h
//  TestInherit
//
//  Created by liujing on 16/11/4.
//  Copyright © 2016年 liujing. All rights reserved.
//

#import <Foundation/Foundation.h>
//可以不写<SomeDelegate> 不#import "ViewController.h"
//这样的话ViewController那里就不用@class了可以直接import Model
//这样的话SubModel里调用[super someMethod]就编译错误 因为someMethod这个方法没有被import过来

#import "ViewController.h"
@interface Model : NSObject<SomeDelegate>
//@interface Model : NSObject
@end
