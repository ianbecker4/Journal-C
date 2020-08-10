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

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return IRBEntryController.sharedInstance.entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    
    IRBEntry * entry = IRBEntryController.sharedInstance.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return true;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        IRBEntry * entryToDelete = IRBEntryController.sharedInstance.entries[indexPath.row];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"addEntry"]) {
        IRBEntryDetailViewController * addEntryVC = [segue destinationViewController];
        addEntryVC.titleTextField = NULL;
        addEntryVC.bodyTextView = NULL;
    } else if ([segue.identifier isEqualToString:@"editEntry"]) {
        IRBEntryDetailViewController * editEntryVC = [segue destinationViewController];
        IRBEntry * entry;
        editEntryVC.titleTextField = entry.title;
        editEntryVC.bodyTextView = entry.bodyText;
    }

}

@end
