//
//  IRBEntryController.m
//  Journal-C
//
//  Created by Ian Becker on 8/10/20.
//  Copyright © 2020 Cameron Stuart. All rights reserved.
//

#import "IRBEntryController.h"
#import "IRBEntry.h"

@implementation IRBEntryController

+ (instancetype)sharedInstance
{
    
    static IRBEntryController * sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        sharedInstance = [IRBEntryController new];
    });
    
    return sharedInstance;
}

- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    NSMutableArray * arrayOfEntries = _entries;
    [arrayOfEntries addObject:_entries];
}

- (void)removeEntry:(IRBEntry *)entry
{
    for (entry in _entries) {
        
    }
}

- (void)updateEntry:(IRBEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText
{
    
}

@end
