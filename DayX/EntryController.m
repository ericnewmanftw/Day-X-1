//
//  EntryController.m
//  DayX
//
//  Created by Eric Newman on 4/11/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import "EntryController.h"

@interface EntryController ()


@end

@implementation EntryController

+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[EntryController alloc] init];
        
        [sharedInstance loadEntriesFromDefaults];
        
    });
    return sharedInstance;
}

- (void)loadEntriesFromDefaults {
    
    NSArray *entryDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:entriesKey];
    
    NSMutableArray *entries = [NSMutableArray new];
    
    for (NSDictionary *entryDictionary in entryDictionaries) {
        Entry *entry = [[Entry alloc] initWithDictionary:entryDictionary];
        [entries addObject:entry];
    }
    
    self.entries = entries;
    
}

- (void)storeEntriesInDefaults:(NSArray *)entries
{
    NSMutableArray *arrayOfEntryDictionaries;
    
    for (Entry *entry in entries) {
        [arrayOfEntryDictionaries addObject:[entry entryDictionary]];
    }
    [[NSUserDefaults standardUserDefaults] setObject:arrayOfEntryDictionaries forKey:entriesKey];
    
}


//- NSMutableArray *entries = [Entry loadEntriesFromDefaults];
//[entries addObject:self.entry];
//
//[Entry storeEntriesInDefaults:entries];
//
//[self.navigationController popViewControllerAnimated:YES];
//
//
//}
//

@end
