//
//  AppDelegate.h
//  GoogleSignInSample
//
//  Created by 加藤 雄大 on 2015/09/13.
//  Copyright (c) 2015年 grandbig.github.io. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Google/SignIn.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, GIDSignInDelegate>

@property (strong, nonatomic) UIWindow *window;


@end

