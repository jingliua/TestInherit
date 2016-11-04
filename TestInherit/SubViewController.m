//
//  SubViewController.m
//  TestInherit
//
//  Created by liujing on 16/11/4.
//  Copyright © 2016年 liujing. All rights reserved.
//

#import "SubViewController.h"
#import "SubModel.h"
@interface SubViewController ()
{
    Model *_model;
}
@end

@implementation SubViewController
//@synthesize model = _model;

-(Model *)model{
    _model = [[SubModel alloc]init];
    return _model;//这里直接使用self.model引起崩溃 用model或者_model都编译不通过 只能重新定义成员变量_model来覆盖父类的_model
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //不放在viewDidLoad里因super的此方法会先执行test方法，即使此句放上面也会被super的此方法覆盖成父类的model,所以还是直接在model的getter方法中设置
    
    // model = [[SubModel alloc]init];
    
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
