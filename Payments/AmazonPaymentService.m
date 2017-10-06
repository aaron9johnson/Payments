//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Aaron Johnson on 2017-10-05.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Amazon processed amount $%ld.", (long)amount);
}
-(BOOL)canProcessPayment{
    return arc4random_uniform(2);
}
@end
