//
//  IRBEntryListTableViewController.m
//  Journal-C
//
//  Created by Ian Becker on 8/10/20.
//  Copyright © 2020 Cameron Stuart. All rights reserved.
//

#import "IRBEntryListTableViewController.h"
#import "IRBEntryController.h"
#import "IRBEntry.h"
#import "IRBEntryDetailViewController.h"

@interface IRBEntryListTableViewController ()

@end

@implementation IRBEntryListTableViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[IRBEntryController sharedInstance] entries] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    IRBEntryController * entryController = [IRBEntryController sharedInstance];
    IRBEntry * entry = entryController.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        IRBEntry * entryToDelete = IRBEntryController.sharedInstance.entries[indexPath.row];
        [IRBEntryController.sharedInstance removeEntry:entryToDelete];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"editEntry"]) {
        
        NSIndexPath * indexPath = [self.tableView indexPathForCell:sender];
        IRBEntry * entry = IRBEntryController.sharedInstance.entries[indexPath.row];
        
        IRBEntryDetailViewController * detailViewController = segue.destinationViewController;
        detailViewController.entry = entry;
    }
//      else if ([segue.identifier isEqualToString:@"editEntry"]) {
//        IRBEntryDetailViewController * editEntryVC = [segue destinationViewController];
//        IRBEntry * entry;
//        editEntryVC.titleTextField = entry.title;
//        editEntryVC.bodyTextView = entry.bodyText;
//    }

}

@end
