//
//  CalcViewController.h
//  Calculator
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalcViewController : UIViewController

- (IBAction)numberButtonPressed:(UIButton *)sender;

- (IBAction)operationButtonPressed:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *display;
@property (nonatomic) BOOL isTypingNumber;

@end
