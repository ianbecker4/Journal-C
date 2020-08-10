//
//  IRBEntryController.h
//  Journal-C
//
//  Created by Ian Becker on 8/10/20.
//  Copyright © 2020 Cameron Stuart. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IRBEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface IRBEntryController : NSObject

// MARK: - Shared Instance
+ (instancetype)sharedInstance;

// MARK: - Source of truth
@property (nonatomic, strong) NSMutableArray * entries;

- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText;

- (void)removeEntry:(IRBEntry *)entry;

- (void)updateEntry:(IRBEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText;

@end

NS_ASSUME_NONNULL_END
