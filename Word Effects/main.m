//
//  main.m
//  Word Effects
//
//  Created by Taylor Benna on 2016-05-02.
//  Copyright © 2016 Taylor Benna. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL go = YES;
        while (go) {
            char inputChars[255];
            printf("Input a String: ");
            fgets(inputChars, 255, stdin);
            printf("Your String is: %s\n", inputChars);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            NSLog(@"Your input was: %@", inputString);
        }
        
        
        
    }
    return 0;
}
