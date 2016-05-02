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
            //Options List
            printf("Your Options:\n");
            printf("1. ALL UPERCASE\n");
            printf("2. all lowercase\n");
            printf("3. Convert to a Number\n");
            printf("4. Canadianize\n");
            printf("5. Respond\n");
            printf("6. De-Space\n");
            printf("7. Count Characters\n\n");
            
            //Takes Option Input
            char which[255];
            printf("Which Operation would you like to do?: ");
            fgets(which, 255, stdin);
            strtok(which, "\n");
            
            //printf("Your choice was: %s\n", which);
            
            
            //Takes String Input
            char inputChars[255];
            printf("Input a String: ");
            fgets(inputChars, 255, stdin);
            strtok(inputChars, "\n");
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            
            //Deals with choices
            NSString *choice = [NSString stringWithUTF8String:which];
            
            if ([choice isEqualToString:@"1"]){
                NSLog(@"%@", [inputString uppercaseString]);
            }
            else if ([choice isEqualToString:@"2"]) {
                NSLog(@"%@", [inputString lowercaseString]);
            }
            else if ([choice isEqualToString:@"3"]) {
                double output = [inputString doubleValue];
                NSLog(@"%.2f", output);
            }
            else if ([choice isEqualToString:@"4"]) {
                NSString *canadianString = [inputString stringByAppendingString:@", eh?"];
                NSLog(@"%@", canadianString);
            }
            else if ([choice isEqualToString:@"5"]) {
                if([inputString hasSuffix:@"?"]){
                    NSLog(@"I don't know!");
                }else if([inputString hasSuffix:@"!"]){
                    NSLog(@"Whoa, calm down!");
                }else{
                    NSLog(@"You did something wrong");
                }
            }
            else if ([choice isEqualToString:@"6"]) {
                NSString *newString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"%@", newString);
            }
            else if([choice isEqualToString:@"7"]) {
                NSUInteger count = [inputString length];
                NSLog(@"Your String is this long: %lu", (unsigned long)count);
            }
            else {
                printf("Your option doesn't exist. Nothing will happen");
            }
            
            printf("\n\n"); //Create space between end of instance and re-loop
        }
        
        
        
    }
    return 0;
}
