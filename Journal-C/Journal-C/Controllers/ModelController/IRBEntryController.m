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

- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [NSMutableArray new];
    }
    return  self;
}

- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    IRBEntry * newEntry = [[IRBEntry alloc] initWithTitle:title bodytext:bodyText];
    
    [_entries addObject:newEntry];
}

- (void)removeEntry:(IRBEntry *)entry
{
    [_entries removeObject:entry];
}

- (void)updateEntry:(IRBEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timestamp = [NSDate date];
}

@end
