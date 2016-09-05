//
//  main.m
//  Tiny Address Book
//
//  Created by Andrew Barber on 8/22/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

bool entryName(char name[], int nameLength, const char *prompt);


int userInput = -1;
int shouldAddAnother ();
void addAAdress ();
void doNotAddAdress();

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        addAAdress ();
    }
    return 0;
}

void doNotAddAdress() {
    if (shouldAddAnother() == 0) {
        addAAdress();
    }
    
}

int shouldAddAnother() {
    int addAnother = -1;
    
    NSLog(@"Would you like to add another to your address book?");
    NSLog(@"0: Yes\n1: No\n");
    scanf("%d", &userInput);
    addAnother = userInput;
    
    return addAnother;
}

void addAAdress () {
    while (shouldAddAnother() == 0) {
        
        // Get Name
        bool haveName = false;
        char *newName = malloc(sizeof(char) * 50);
        while (!haveName) {
            haveName = entryName(newName, 50, "What is your name?\n");
        }
        
        // Get Email
        bool haveEmail = false;
        char *newEmail = malloc(sizeof(char) * 50);
        while (!haveEmail) {
            haveEmail = entryName(newEmail, 50, "What is your email?\n");
        }
        
        // Get Buddy
        bool haveBuddy = false;
        char *newBuddy = malloc(sizeof(char) * 50);
        while (!haveBuddy) {
            haveBuddy = entryName(newBuddy, 50, "Who is your buddy?\n");
        }
        
        NSString* yourName = [NSString stringWithFormat:@"%s", newName];
        NSString* yourEmail = [NSString stringWithFormat:@"%s", newEmail];
        NSString* yourBuddy = [NSString stringWithFormat:@"%s", newBuddy];
        
        // Convert Char pointers to NSStrings
        Entry *user = [[Entry alloc] initWithName:yourName Email:yourEmail Buddy:yourBuddy];
        
        [[user addressBook] addObject:user];
        
        NSLog(@"Your name is %@, Your email is %@, and %@ is your buddy!", user.name, user.email, user.buddy);
        
        NSLog(@"What you have in your address book so far... %@", [user addressBook]);
    }
}



bool entryName(char name[], int nameLength, const char *prompt) {
    
    char *result = NULL;
    while (result != name) {
        fpurge(stdin);
        printf("%s", prompt);
        result = fgets(name, nameLength, stdin);
    }
    return true;
}


