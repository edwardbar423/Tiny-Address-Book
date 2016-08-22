//
//  main.m
//  Tiny Address Book
//
//  Created by Andrew Barber on 8/22/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        Entry *first = [[Entry alloc] init];
        
        [first getInfo];
        
        NSLog(@"First entree is %@", [first name]);
        
        Entry *second = [[Entry alloc]initWithName:@"Joey"];
        
        NSLog(@"Second entree is %@", second.name);
        
        
        
        char cString[100];
        NSString *myString;
        
        NSLog(@"Enter a string...");
        scanf("%s", &cString);
        
        myString = [NSString stringWithCString: cString encoding: NSASCIIStringEncoding];
        
        NSLog(@"You entered: %@", myString);
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        /* NSString *getName(int nameLength, NSString *prompt) {
            
            char *userName = malloc(sizeof(char) * nameLength);
            
            char *result = NULL;
            while (result != buffer) {
                
                fpurge(stdin);
                NSLog(@"%@", prompt);
                results = fgets(buffer, nameLength, stdin);
            }
            NSString *returnValue = @(buffer);
            
            free(buffer);
            return returnValue;
    }*/
        
    }
    return 0;
}
