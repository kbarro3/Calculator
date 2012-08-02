//
//  CalcViewController.m
//  Calculator
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalcViewController.h"

@interface CalcViewController ()

@end

@implementation CalcViewController
@synthesize display = _display;
@synthesize isTypingNumber= _isTypingNumber;
@synthesize model = _model;


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.isTypingNumber = NO;
    self.model = [[CalculatorModel alloc] init];
}

- (void)viewDidUnload
{
    [self setDisplay:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)numberButtonPressed:(UIButton *)sender {
    //check to see if you are typing.  The typing number is YES
    if (self.isTypingNumber) {
        //If we are typing a number we append the title of the button
        NSString *newDisplay = [self.display.text stringByAppendingFormat:@"%@",sender.titleLabel.text];
        self.display.text = newDisplay;
    } 
    //Otherwise, if the typing number is NO
    else {
        self.display.text = sender.titleLabel.text;
        self.isTypingNumber = YES;
    }
    
}

- (IBAction)operationButtonPressed:(UIButton *)sender {
    NSString *operator = sender.titleLabel.text;

    if (self.isTypingNumber) {
        
        double currentNumber =[self.display.text doubleValue];
        
        if ([operator isEqualToString:@"="]) {
            double result = [self.model performOperationWithOperand:(currentNumber)];
            NSLog(@"Result %f", result);
        } else {
            self.model.waitingOperand = currentNumber;
            self.model.operation = operator;
        }
        
        
        

        self.isTypingNumber = NO;
        
    }
    
//    if ([operator isEqualToString:@"*"])
//    {
//        NSLog(@"Multiply");
//    } else if ([operator isEqualToString:@"/"])
//    {
//        NSLog(@"Divide");
//    } else if ([operator isEqualToString:@"-"])
//    {
//        NSLog(@"Subtract");
//    } else if ([operator isEqualToString:@"+"])
//    {
//        NSLog(@"Add");
//    }else if ([operator isEqualToString:@"="])
//    {
//        NSLog(@"Equal");
//    }
//
}

        


    
@end
