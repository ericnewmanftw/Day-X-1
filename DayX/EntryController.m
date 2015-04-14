//
//  EntryController.m
//  DayX
//
//  Created by Eric Newman on 4/11/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import "EntryController.h"

@interface EntryController ()

@property (nonatomic, strong) NSArray *entries;


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

-(void)addEntry:(Entry *)entry {
    if (!entry) {
        return;
    
    }
    NSMutableArray *mutableEntries = [[NSMutableArray alloc] initWithArray:self.entries];
    [mutableEntries addObject:entry];
    
    self.entries = mutableEntries;
    
    [self sychronize];
    
    
}

-(void)removeEntry:(Entry *)entry {
    
}

-(void)replaceEntry:(Entry *)oldEntry withEntry:(Entry *)newEntry {
    
}



// We shouldn't need these just yet, but I'll uncomment them when / if we do.
- (void)loadEntriesFromDefaults {
    
    NSArray *entryDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:entriesKey];
    
    NSMutableArray *entries = [NSMutableArray new];
    
    for (NSDictionary *entryDictionary in entryDictionaries) {
        Entry *entry = [[Entry alloc] initWithDictionary:entryDictionary];
        [entries addObject:entry];
    }
    
    self.entries = entries;
    
}

- (void)sychronize
{
    NSMutableArray *arrayOfEntryDictionaries;
    
    for (Entry *entry in self.entries) {
        [arrayOfEntryDictionaries addObject:[entry entryDictionary]];
    }
    [[NSUserDefaults standardUserDefaults] setObject:arrayOfEntryDictionaries forKey:entriesKey];
    
    [[NSUserDefaults standardUserDefaults]synchronize];
    
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
