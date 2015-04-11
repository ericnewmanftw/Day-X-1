//
//  DXListDataSource.m
//  DayX
//
//  Created by Eric Newman on 4/11/15.
//  Copyright (c) 2015 Alan Barth. All rights reserved.
//

#import "DXListDataSource.h"
#import "EntryController.h"

@implementation DXListDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [EntryController sharedInstance].entries.count;
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    Entry *entryForCell = [EntryController sharedInstance].entries[indexPath.row];
    cell.textLabel.text = entryForCell.title;
    
    return cell;
    
    
}

@end
