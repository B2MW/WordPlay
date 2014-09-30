//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Michael Maloof on 9/30/14.
//  Copyright (c) 2014 BlackSummerVentures. All rights reserved.
//

#import "ResultsViewController.h"


@interface ResultsViewController ()
@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSString *story = [NSString stringWithFormat:@"%@ went to the %@ mall.", self.name, self.adjective];
    self.resultsTextView.text = story;
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
