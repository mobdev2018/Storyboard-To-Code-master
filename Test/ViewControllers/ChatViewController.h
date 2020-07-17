//
//  ChatViewController.h
//  Test
//
//  Created by beauty on 10/22/15.
//  Copyright (c) 2015 beauty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property(nonatomic, strong) UITableView *tableView;

@property(nonatomic, strong) UIButton *firstButton;
@property(nonatomic, strong) UIButton *secondButton;
@property(nonatomic, strong) UIButton *thirdButton;



@end
