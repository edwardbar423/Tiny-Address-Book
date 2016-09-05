//
//  Entry.m
//  Tiny Address Book
//
//  Created by Andrew Barber on 8/22/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import "Entry.h"

@implementation Entry

-(instancetype)initWithName:(NSString *)name Email:(NSString *)email Buddy:(NSString *)buddy{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _buddy = buddy;
        _addressBook = [[NSMutableArray alloc] init];
            }
    
    return self;
}

@end
