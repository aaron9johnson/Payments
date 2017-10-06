//
//  main.m
//  Payments
//
//  Created by Aaron Johnson on 2017-10-05.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        bool loop = 1;
        while(loop){
            int cost = arc4random_uniform(900) + 100;
            NSLog(@"Thank you for shopping at Acme.com\nYour total today is $%d\nPlease select your payment method:\n1: Paypal, 2: Stripe, 3: Amazon, 4: Apple\n", cost);
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSInteger choice = [inputString integerValue];
            NSLog(@"input %ld", (long)choice);
            
            PaymentGateway *pGate = [PaymentGateway new];
            PaypalPaymentService *Paypal;
            StripePaymentService *Stripe;
            AmazonPaymentService *Amazon;
            ApplePaymentService *Apple;
            switch (choice) {
                case 1:
                    
                    pGate.paymentDelegate = Paypal = [PaypalPaymentService new];
                    break;
                case 2:
                    pGate.paymentDelegate = Stripe = [StripePaymentService new];
                    break;
                case 3:
                    pGate.paymentDelegate = Amazon = [AmazonPaymentService new];
                    break;
                case 4:
                    pGate.paymentDelegate = Apple = [ApplePaymentService new];
                    break;
                    
                default:
                    loop = 0;
                    break;
            }
            [pGate processPaymentAmount:cost];
        }
        
    }
    return 0;
}
