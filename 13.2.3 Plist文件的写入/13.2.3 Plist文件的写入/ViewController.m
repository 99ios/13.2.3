//
//  ViewController.m
//  13.2.3 Plist文件的写入
//
//  Created by 李维佳 on 2017/4/4.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setValue:@"99iOS" forKey:@"webName"];
    NSLog(@"%@",dict);
    NSArray *documentsArr = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsPath = [documentsArr objectAtIndex:0];
    NSString *dictPlistPath = [documentsPath stringByAppendingPathComponent:@"dict.plist"];
        [dict writeToFile:dictPlistPath atomically:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
