//
//  EntryController.h
//  DayX
//
//  Created by Eric Newman on 4/11/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EntryController : NSObject

+(EntryController *) sharedInstance;

+(NSMutableArray *)loadEntriesFromDefaults;
+(void)storeEntriesInDefaults:(NSArray *)entries;

@end
