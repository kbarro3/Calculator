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
        result = self.waitingOperand * newOperand;
        
    } else if ([self.operation isEqualToString:@"/"])
    {
        result = self.waitingOperand / newOperand;
        
    } else if ([self.operation isEqualToString:@"-"])
    {
        result = self.waitingOperand - newOperand;
        
    } else if ([self.operation isEqualToString:@"+"])
    {
        result = self.waitingOperand + newOperand;
    }
    
    return result;

}
@end
