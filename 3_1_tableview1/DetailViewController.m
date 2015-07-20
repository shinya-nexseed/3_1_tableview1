//
//  DetailViewController.m
//  3_1_tableview1
//
//  Created by Shinya Hirai on 2015/07/20.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "DetailViewController.h"
#import "AppDelegate.h" // クラスのインポート

@interface DetailViewController () {
    AppDelegate *_appDelegate; // 定義
}

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _appDelegate = [[UIApplication sharedApplication] delegate]; // 初期化
    NSLog(@"appDelegate.iPath 3 = %d", _appDelegate.iPath); // 実行
    self.myLabel.text = [NSString stringWithFormat:@"%d",_appDelegate.iPath];
    
    NSLog(@"appDelegate.memberName 2 = %@", _appDelegate.memberName);
    self.myLabel.text = _appDelegate.memberName;
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
