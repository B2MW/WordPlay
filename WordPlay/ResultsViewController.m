//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Michael Maloof on 9/30/14.
//  Copyright (c) 2014 BlackSummerVentures. All rights reserved.
//

#import "ResultsViewController.h"


@interface ResultsViewController ()
@property IBOutlet UITextView *resultsTextView;
@end

@implementation ResultsViewController



- (void)viewDidLoad {
    [super viewDidLoad];
//    NSDictionary *stringAttributes = [NSDictionary dictionaryWithObjectsAndKeys:@"%s",@"bold",@"%@",@"default", nil];

    CGFloat fontSize = self.resultsTextView.font.pointSize;

    NSMutableAttributedString *newName = [[NSMutableAttributedString alloc] initWithString:self.name attributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:fontSize]}];
//    NSInteger newNameLength = newName.length;


    NSMutableAttributedString *newAdjective = [[NSMutableAttributedString alloc] initWithString:self.adjective attributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:fontSize]}];
//    NSInteger newAdjectiveLength = newAdjective.length;

    NSMutableAttributedString *newExplitive = [[NSMutableAttributedString alloc] initWithString:self.explitive attributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:fontSize]}];
//    NSInteger newExplitiveLength = newExplitive.length;

    NSMutableAttributedString *newVerb = [[NSMutableAttributedString alloc] initWithString:self.verb attributes:@{NSFontAttributeName: [UIFont boldSystemFontOfSize:fontSize]}];
//    NSInteger newVerbLength = newVerb.length;

    UIFont *updatedFont = [UIFont boldSystemFontOfSize:self.resultsTextView.font.pointSize];

    NSAttributedString *formattedResults = [[NSAttributedString alloc] initWithAttributedString:(@"%@ is a %@ with a %@ that likes to %@ all the time.", newName, newAdjective, newExplitive, newVerb)];

    self.resultsTextView.attributedText = formattedResults;




//    self.resultsTextView.attributedText;
//                                        :@"%@ is a %@ with a %@ that likes to %@ all the time.", self.name, self.adjective, self.explitive, self.verb];
//NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:(@"%@ is a %@ with a %@ that likes to %@ all the time.", self.name, self.adjective, self.explitive, self.verb) attributes:stringAttributes;
//    self.resultsTextView.attributedText = ;

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
