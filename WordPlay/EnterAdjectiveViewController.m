//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Bradley Walker on 9/30/14.
//  Copyright (c) 2014 BlackSummerVentures. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultsViewController.h"

@interface EnterAdjectiveViewController ()
@property IBOutlet UITextField *adjectiveTextField;
@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultsViewController *adjectiveValues = segue.destinationViewController;
    adjectiveValues.adjective = self.adjectiveTextField.text;
    adjectiveValues.name = self.name;
    adjectiveValues.explitive = self.explitive;
    adjectiveValues.verb = self.verb;
}

- (BOOL) shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if (([identifier isEqualToString:@"AdjectiveSegue"]) && ([self.adjectiveTextField.text isEqualToString:@""])){
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

