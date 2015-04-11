//
//  Car.m
//  DayX
//
//  Created by Eric Newman on 4/9/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    self = [super init];
    if (self) {
        self.make = dictionary[makeKey];
        self.model = dictionary[modelKey];
        self.year = dictionary[yearKey];
    }
    return self;
}

@end
