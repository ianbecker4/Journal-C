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

@interface IRBEntryDetailViewController () <UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@end

@implementation IRBEntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateViews];
}

- (void)updateViews
{
    if (!self.entry) return;
    
    self.titleTextField.text = self.entry.title;
    self.bodyTextView.text = self.entry.bodyText;
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
    if (self.entry) {
        [[IRBEntryController sharedInstance] updateEntry:self.entry title:self.titleTextField.text bodyText:self.bodyTextView.text];
    } else {
        [[IRBEntryController sharedInstance] addEntryWithTitle:self.titleTextField.text bodyText:self.bodyTextView.text];
    }
    [self dismissViewControllerAnimated:YES completion:^{
        [self.navigationController popToRootViewControllerAnimated:YES];
    }];
}

- (void)setEntry:(IRBEntry *)entry
{
    if (entry != _entry) {
        _entry = entry;
        [self updateViews];
    }
}

@end
