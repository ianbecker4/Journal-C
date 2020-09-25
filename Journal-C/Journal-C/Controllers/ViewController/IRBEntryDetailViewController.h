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

@interface IRBEntryDetailViewController : UIViewController

@property (strong, nonatomic) IRBEntry * entry;

@end

NS_ASSUME_NONNULL_END
