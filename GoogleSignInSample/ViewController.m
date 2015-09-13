//
//  ViewController.m
//  GoogleSignInSample
//
//  Created by 加藤 雄大 on 2015/09/13.
//  Copyright (c) 2015年 grandbig.github.io. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [GIDSignIn sharedInstance].uiDelegate = self;
    [GIDSignIn sharedInstance].scopes = @[@"https://www.googleapis.com/auth/calendar", @"https://www.googleapis.com/auth/drive"];
    NSLog(@"scope: %@", [GIDSignIn sharedInstance].scopes);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Implement these methods only if the GIDSignInUIDelegate is not a subclass of
// UIViewController.

// Stop the UIActivityIndicatorView animation that was started when the user
// pressed the Sign In button
- (void)signInWillDispatch:(GIDSignIn *)signIn error:(NSError *)error {
    
}

// Present a view that prompts the user to sign in with Google
- (void)signIn:(GIDSignIn *)signIn presentViewController:(UIViewController *)viewController {
    
    [self presentViewController:viewController animated:YES completion:nil];
}

// Dismiss the "Sign in with Google" view
- (void)signIn:(GIDSignIn *)signIn dismissViewController:(UIViewController *)viewController {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)didTapSignIn:(id)sender {
    
    [[GIDSignIn sharedInstance] signIn];
}

- (IBAction)didTapSignOut:(id)sender {
    
    [[GIDSignIn sharedInstance] signOut];
}

@end
