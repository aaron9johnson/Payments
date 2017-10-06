//
//  PaymentGateway.m
//  Payments
//
//  Created by Aaron Johnson on 2017-10-05.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
-(void)processPaymentAmount:(NSInteger)amount{
    if([self.paymentDelegate canProcessPayment]){
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"Sorry, your payment cannot be processed.");
    }
    
}
@end
