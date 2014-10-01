//
//  EnterExplitiveViewController.m
//  WordPlay
//
//  Created by Bradley Walker on 9/30/14.
//  Copyright (c) 2014 BlackSummerVentures. All rights reserved.
//

#import "EnterExplitiveViewController.h"
#import "EnterNameViewController.h"

@interface EnterExplitiveViewController ()
@property IBOutlet UITextField *explitiveValue;

@end

@implementation EnterExplitiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterNameViewController *explitiveValues = segue.destinationViewController;
    explitiveValues.verb = self.verb;
    explitiveValues.explitive = self.explitiveValue.text;
}

- (BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (([identifier isEqualToString:@"ExplitiveSegue"]) && ([self.explitiveValue.text isEqualToString:@""])){
        return NO;
    }
    else {
        return YES;
    }
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
