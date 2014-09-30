//
//  ResultsViewController.h
//  WordPlay
//
//  Created by Michael Maloof on 9/30/14.
//  Copyright (c) 2014 BlackSummerVentures. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *resultsTextView;
@property (weak, nonatomic) NSString *name, *adjective;

@end
