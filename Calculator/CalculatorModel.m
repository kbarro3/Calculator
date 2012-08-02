//
//  CalculatorModel.m
//  Calculator
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CalculatorModel.h"

@implementation CalculatorModel

@synthesize waitingOperand = _waitingOperand;
@synthesize operation = _operation;

- (double)performOperationWithOperand:(double)newOperand
{
    double result;
    
    if ([self.operation isEqualToString:@"*"])
    {
        NSLog(@"Multiply");
    } else if ([self.operation isEqualToString:@"/"])
    {
        NSLog(@"Divide");
    } else if ([self.operation isEqualToString:@"-"])
    {
        NSLog(@"Subtract");
    } else if ([self.operation isEqualToString:@"+"])
    {
        NSLog(@"Add");
    }else if ([self.operation isEqualToString:@"="])
    {
        NSLog(@"Equal");
    }
    
    return 0.0;

}
@end
