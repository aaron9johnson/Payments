//
//  PaymentGateway.h
//  Payments
//
//  Created by Aaron Johnson on 2017-10-05.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol PaymentDelegate <NSObject>
-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;
@end
@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;
-(void)processPaymentAmount:(NSInteger)amount;
@end
