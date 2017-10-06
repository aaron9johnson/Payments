//
//  StripePaymentService.m
//  Payments
//
//  Created by Aaron Johnson on 2017-10-05.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Stripe processed amount $%ld.", (long)amount);
}
-(BOOL)canProcessPayment{
    return arc4random_uniform(2);
}
@end
