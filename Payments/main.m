//
//  main.m
//  Payments
//
//  Created by Aaron Johnson on 2017-10-05.
//  Copyright © 2017 Aaron Johnson. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int cost = arc4random_uniform(900) + 100;
        NSLog(@"Thank you for shopping at Acme.com\nYour total today is $%d\nPlease select your payment method:\n1: Paypal, 2: Stripe, 3: Amazon\n", cost);
        char inputChars[255];
        fgets(inputChars, 255, stdin);
        NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        int choice = (int)[inputString integerValue];
        NSLog(@"%d", choice);
    }
    return 0;
}
