//
//  DXListViewController.m
//  DayX
//
//  Created by Eric Newman on 4/11/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import "DXListViewController.h"

@interface DXListViewController () <UITableViewDelegate>

@end

@implementation DXListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addEntry:(id)sender {
    [self performSegueWithIdentifier:@"showDetail" sender:self];
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
