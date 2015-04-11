//
//  Entry.m
//  DayX
//
//  Created by Eric Newman on 4/9/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import "Entry.h"





@implementation Entry

- (id)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        self.title = dictionary[titleKey];
        self.bodyText = dictionary[textKey];
        self.timestamp = dictionary[timestampKey];
    }
    return self;
}


-(NSDictionary *)entryDictionary
{
   
    NSMutableDictionary *entryDictionary = [NSMutableDictionary new];
    
    if (self.title) {
        [entryDictionary setObject:self.title forKey:titleKey];
    }
    if (self.bodyText) {
        [entryDictionary setObject:self.bodyText forKey:textKey];
    }
    if (self.timestamp) {
        [entryDictionary setObject:self.timestamp forKey:timestampKey];
    }
    
    return entryDictionary;
    
}

-(NSString *)description {
    return self.title;
}

//The "+" means calling bluprints for a house, vs my house. The following code was added by Caleb in class, but we end up using it in another place.

//+ (NSMutableArray *)loadEntriesFromDefaults {
//    NSArray *allEntries = [[NSUserDefaults standardUserDefaults] objectForKey:AllEntriesKey];
//    
//    NSMutableArray *convertedEntries = [NSMutableArray new];
//    
//    for (NSDictionary *dictionary in allEntries) {
//        Entry *entry = [[Entry alloc] initWithDictionary:dictionary];
//        
//        [convertedEntries addObject:entry];
//        
//    }
//    return convertedEntries;
//    
//}





@end
