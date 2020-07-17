//
//  RecentTableViewController.m
//  Test
//
//  Created by beauty on 10/22/15.
//  Copyright (c) 2015 beauty. All rights reserved.
//

#import "RecentTableViewController.h"
#import "UsersTableViewController.h"

@interface RecentTableViewController ()

@end

@implementation RecentTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *RecentCellIdentifier = @"RecentCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:RecentCellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:RecentCellIdentifier];
    }
    
    // Configure the cell...
    
    cell.textLabel.text = @"Title";
    cell.detailTextLabel.text = @"Subtitle";
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    [self.navigationController pushViewController:[UsersTableViewController new] animated:YES];
    
    
}


@end
