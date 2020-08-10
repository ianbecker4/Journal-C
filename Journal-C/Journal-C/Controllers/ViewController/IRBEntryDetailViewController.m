//
//  IRBEntryDetailViewController.m
//  Journal-C
//
//  Created by Ian Becker on 8/10/20.
//  Copyright © 2020 Cameron Stuart. All rights reserved.
//

#import "IRBEntryDetailViewController.h"
#import "IRBEntryController.h"
#import "IRBEntry.h"

@interface IRBEntryDetailViewController ()

@end

@implementation IRBEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _titleTextField.delegate = self;
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return true;
}

- (void) updateWithEntry:(IRBEntry *)entry
{
    if (entry)
    {
        _titleTextField.text = entry.title;
        _bodyTextView.text = entry.bodyText;
    }
}

- (IBAction)clearbuttonTapped:(id)sender {
    _titleTextField.text = @"";
    _bodyTextView.text = @"";
}

- (IBAction)saveButtonTapped:(id)sender {
    IRBEntry * entry;
    if (entry) {
        _titleTextField.text = entry.title;
        _bodyTextView.text = entry.bodyText;
    } else {
        
    }
    [self dismissViewControllerAnimated:true completion:NULL];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
