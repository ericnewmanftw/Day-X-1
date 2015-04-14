//
//  EntryController.h
//  DayX
//
//  Created by Eric Newman on 4/11/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

+(EntryController *) sharedInstance;

@property (nonatomic, readonly) NSArray *entries;

- (void)addEntry:(Entry *)entry;
- (void)removeEntry:(Entry *)entry;
- (void)replaceEntry:(Entry *)oldEntry withEntry:(Entry *)newEntry;


@end
