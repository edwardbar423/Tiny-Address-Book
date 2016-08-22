//
//  Entry.h
//  Tiny Address Book
//
//  Created by Andrew Barber on 8/22/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *email;

-(instancetype) initWithName:(NSString*)defaultName;

-(void) getInfo;

-(NSString *) userName: (NSString *) userName;

@end
