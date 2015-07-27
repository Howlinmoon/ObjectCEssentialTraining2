//
//  main.m
//  ExceptionExample
//
//  Created by jim Veneskey on 7/27/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        

        @try {
            id today = [[NSDate alloc]init];
            [today uppercaseString];
        }
        @catch (NSException *exception) {
            NSLog(@"We found an exception - and handled it.");
            NSLog(@"It was: %@", exception);
        }
        @finally {
            NSLog(@"We're still here!");
        }
    }
    return 0;
}

