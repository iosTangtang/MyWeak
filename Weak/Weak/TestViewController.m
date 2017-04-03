//
//  TestViewController.m
//  Weak
//
//  Created by Tangtang on 2017/4/3.
//  Copyright © 2017年 Tangtang. All rights reserved.
//

#import "TestViewController.h"
#import "NSObject+Weak.h"

@interface TestViewController ()

@property (nonatomic, strong) NSObject *obj;

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 100, 100, 50);
    [button setTitle:@"关闭" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(closeVC) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    self.obj = [[NSObject alloc] init];
    __weak typeof(self) weakSelf = self;
    [self.obj yxl_nilWithDealloc:^{
        NSLog(@"deallocating....");
        weakSelf.obj = nil;
    }];
    
}

- (void)closeVC {
    [self dismissViewControllerAnimated:YES completion:nil];
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
