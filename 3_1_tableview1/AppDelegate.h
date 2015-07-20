//
//  AppDelegate.h
//  3_1_tableview1
//
//  Created by Shinya Hirai on 2015/07/20.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    int iPath;
    NSString *memberName;
}

@property (nonatomic,assign) int iPath;
@property (nonatomic,strong) NSString *memberName;

@property (strong, nonatomic) UIWindow *window;


@end

