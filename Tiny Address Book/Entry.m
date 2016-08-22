//
//  Entry.m
//  Tiny Address Book
//
//  Created by Andrew Barber on 8/22/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import "Entry.h"

@implementation Entry

-(instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"No Name";
    }
    return self;
}

- (instancetype) initWithName:(NSString *)defaultName
{
    self = [super init];
    if (self) {
        self.name = defaultName;
    }
    return self;
}

-(void) getInfo{
    NSLog(@"Random Info");
}

@end
