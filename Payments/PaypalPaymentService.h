//
//  PaypalPaymentService.h
//  Payments
//
//  Created by Aaron Johnson on 2017-10-05.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject <PaymentDelegate>
-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;
@end
