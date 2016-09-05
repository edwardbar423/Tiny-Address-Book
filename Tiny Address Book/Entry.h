//
//  Entry.h
//  Tiny Address Book
//
//  Created by Andrew Barber on 8/22/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject {
}

@property NSString *name;
@property NSString *email;
@property NSString *buddy;
@property NSMutableArray *addressBook;

-(instancetype)initWithName:(NSString *)name Email:(NSString *)email Buddy:(NSString *)buddy;

@end

