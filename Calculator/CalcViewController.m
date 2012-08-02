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
@synthesize display;
@synthesize isTypingNumber= _isTypingNumber;


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.isTypingNumber = NO;
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
    
    if (self.isTypingNumber) {
        
        double currentNumber =[self.display.text doubleValue];
        NSLog(@"CurrentNumber: %f",currentNumber);
        self.isTypingNumber = NO;
        
    }
    
    NSString *operator = sender.titleLabel.text;
    if ([operator isEqualToString:@"*"])
    {
        NSLog(@"Multiply");
    } else if ([operator isEqualToString:@"/"])
    {
        NSLog(@"Divide");
    } else if ([operator isEqualToString:@"-"])
    {
        NSLog(@"Subtract");
    } else if ([operator isEqualToString:@"+"])
    {
        NSLog(@"Add");
    }else if ([operator isEqualToString:@"="])
    {
        NSLog(@"Equal");
    }



        
}

    
@end
