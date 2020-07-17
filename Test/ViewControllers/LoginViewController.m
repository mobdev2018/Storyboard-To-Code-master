//
//  LoginViewController.m
//  Test
//
//  Created by beauty on 10/22/15.
//  Copyright (c) 2015 beauty. All rights reserved.
//

#import "LoginViewController.h"
#import "RecentTableViewController.h"
#import "ChatViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

-(void)loadView{
    
    self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    float offsetX = screenSize.width * 0.15f;
    float width = screenSize.width * 0.7f;
    
    // Email TextField
    UITextField *emailTF = [[UITextField alloc] initWithFrame:CGRectMake(offsetX, 100, width, 30)];
    emailTF.placeholder = @"Email Address";
    [emailTF setBorderStyle:UITextBorderStyleRoundedRect];
    [emailTF setKeyboardType:UIKeyboardTypeEmailAddress];
    [emailTF setFont:[UIFont systemFontOfSize:14.0]];
    [self.view addSubview:emailTF];
    
    // Password TextField
    UITextField *passwordTF = [[UITextField alloc] initWithFrame:CGRectMake(offsetX, 160, width, 30)];
    passwordTF.placeholder = @"Password";
    [passwordTF setBorderStyle:UITextBorderStyleRoundedRect];
    [passwordTF setSecureTextEntry:YES];
    [passwordTF setFont:[UIFont systemFontOfSize:14.0]];
    [self.view addSubview:passwordTF];
    
    // Login Button
    UIButton *loginButton = [[UIButton alloc] initWithFrame:CGRectMake(offsetX, 200, width, 60)];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    UIColor *defaultColor = [[UIColor alloc] initWithRed:0 green:120/255.0 blue:255/255.0 alpha:1.0f];
    [loginButton setTitleColor:defaultColor forState:UIControlStateNormal];
    [loginButton setTitleShadowColor:[UIColor grayColor] forState:UIControlStateNormal];
    [loginButton.titleLabel setFont:[UIFont systemFontOfSize:15.0]];
    [loginButton addTarget:self action:@selector(onLogin:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
    
    // Logging in... Label
    UILabel *loggingLabel = [[UILabel alloc] initWithFrame:CGRectMake(offsetX, 280, width, 20)];
    [loggingLabel setTextAlignment:NSTextAlignmentCenter];
    loggingLabel.text = @"Logging in...";
    [loggingLabel setFont:[UIFont systemFontOfSize:12.0]];
    [loggingLabel setTextColor:[UIColor lightGrayColor]];
    [self.view addSubview:loggingLabel];
    
    
    
}

-(void)onLogin:(id)sender
{
    [self.navigationController pushViewController:[RecentTableViewController new] animated:YES];
    //[self.navigationController pushViewController:[ChatViewController new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
