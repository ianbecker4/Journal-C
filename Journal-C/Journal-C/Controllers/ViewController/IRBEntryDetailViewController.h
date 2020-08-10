//
//  IRBEntryDetailViewController.h
//  Journal-C
//
//  Created by Ian Becker on 8/10/20.
//  Copyright © 2020 Cameron Stuart. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IRBEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface IRBEntryDetailViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IRBEntry * entry;

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;


@end

NS_ASSUME_NONNULL_END
