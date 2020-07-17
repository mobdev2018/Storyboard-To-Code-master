//
//  ChatViewController.m
//  Test
//
//  Created by beauty on 10/22/15.
//  Copyright (c) 2015 beauty. All rights reserved.
//

#import "ChatViewController.h"
#import "ChatTableViewCell.h"


@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    
    // buttons
    float btnLargeWidth = screenSize.width * 0.25f;
    float btnSmallWidth = screenSize.width * 0.2f;
    float btnCenterY = screenSize.height - 10 - btnLargeWidth *0.5f;
    
    _secondButton = [[UIButton alloc] initWithFrame:CGRectMake((screenSize.width - btnLargeWidth) / 2.0f, (btnCenterY - btnLargeWidth * 0.5f), btnLargeWidth, btnLargeWidth)];
    //[_secondButton setBackgroundImage:[UIImage imageNamed:@"btn_ptt.png"] forState:UIControlStateNormal];
    [_secondButton setBackgroundColor:[UIColor greenColor]];
    [_secondButton addTarget:self action:@selector(onSecond:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_secondButton];
    
    _firstButton = [[UIButton alloc] initWithFrame:CGRectMake(16, btnCenterY - btnSmallWidth*0.5f, btnSmallWidth, btnSmallWidth)];
    [_firstButton setBackgroundColor:[UIColor greenColor]];
    [_firstButton addTarget:self action:@selector(onFirst:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_firstButton];
    
    _thirdButton = [[UIButton alloc] initWithFrame:CGRectMake(screenSize.width - 16 - btnSmallWidth, btnCenterY - btnSmallWidth * 0.5f, btnSmallWidth, btnSmallWidth)];
    [_thirdButton setBackgroundColor:[UIColor greenColor]];
    [_thirdButton addTarget:self action:@selector(onThird:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_thirdButton];
    
    
    // tableView
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, screenSize.width, screenSize.height - btnLargeWidth - 94) style:UITableViewStylePlain];
    
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onFirst:(id)sender
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"First button clicked" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

-(void)onSecond:(id)sender
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"Second button clicked" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

-(void)onThird:(id)sender
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"Third button clicked" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
        return 44.f;
    else
        return 88.0f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSInteger row = [indexPath row];
    UITableViewCell *cell;
    if (row == 0) {
        static NSString *ChatDefaultCellIdentifier = @"ChatDefaultCell";
        cell = [tableView dequeueReusableCellWithIdentifier:ChatDefaultCellIdentifier];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ChatDefaultCellIdentifier];
        }
        
        cell.textLabel.text = @"Title";
        cell.detailTextLabel.text = @"Subtitle";
        
    }else
    {
        static NSString *ChatDetailCellIdentifier = @"ChatDetailCellIdentifier";
        cell = [tableView dequeueReusableCellWithIdentifier:ChatDetailCellIdentifier];
        if (!cell) {
            cell = [[ChatTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ChatDetailCellIdentifier];
        }
    }
    
    
    // Configure the cell...
    
    
    
    return cell;
}


@end
