//
//  Car.h
//  DayX
//
//  Created by Eric Newman on 4/9/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const yearKey =@"2000";
static NSString * const makeKey =@"Toyota";
static NSString * const modelKey =@"Rav-4";

@interface Car : NSObject

@property (strong, nonatomic) NSString *year;
@property (strong, nonatomic) NSString *make;
@property (strong, nonatomic) NSString *model;



@end
