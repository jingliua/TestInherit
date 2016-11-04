//
//  ViewController.m
//  TestInherit
//
//  Created by liujing on 16/11/4.
//  Copyright © 2016年 liujing. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"


@interface ViewController ()
@end

@implementation ViewController

//经测试init方法不执行 更无从先于viewDidLoad执行

//-(id)init{
//    self = [super init];
//    model = [[Model alloc]init];
//    return self;
//}

//model的getter方法
-(Model *)model{
    _model = [[Model alloc]init];//尽量不要用self.model
    return _model;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self test];
}


-(void)test{

    self.sdelegate = self.model;
    if (self.sdelegate && [self.sdelegate respondsToSelector:@selector(someMethod)]) {
        [self.sdelegate performSelector:@selector(someMethod)];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
