//
//  ViewController.m
//  SoLocalizableDemo
//
//  Created by teamotto on 2018/8/22.
//  Copyright © 2018年 soso. All rights reserved.
//

#import "ViewController.h"
#import "SoLangugeUnit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [SoLangugeUnit saveCurrentLanguge:@"en"];
    [SoLangugeUnit saveCurrentLanguge:@"zh-Hans"];

    NSString *ss=  NSLocalizedStringFromTableInBundle(@"Apple", @"",[SoLangugeUnit localiableBundleFormCurrentLanguge],@"第一个参数为id 第二个参数为文件名(可以为空或Localizable) 第三个参数为语言 第四个参数备注");
    
    NSLog(@"result %@",ss);

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
