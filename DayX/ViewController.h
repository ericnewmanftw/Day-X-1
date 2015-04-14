//
//  ViewController.h
//  DayX
//
//  Created by Alan Barth on 4/7/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Entry;

static NSString * const EntryKey = @"entry";

@interface ViewController : UIViewController

- (void)updateWithEntry:(Entry *)entry;


@end



