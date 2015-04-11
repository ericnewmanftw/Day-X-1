//
//  Entry.h
//  DayX
//
//  Created by Eric Newman on 4/9/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const titleKey = @"title";
static NSString *const textKey = @"bodytext";
static NSString * const timestampKey =@"timestamp";

static NSString * const entriesKey =@"entries";



@interface Entry : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *bodyText;
@property (strong, nonatomic) NSDate *timestamp;

-(id)initWithDictionary:(NSDictionary *)dictionary;
-(NSDictionary *)entryDictionary;






@end
