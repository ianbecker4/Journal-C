//
//  IRBEntry.m
//  Journal-C
//
//  Created by Ian Becker on 8/10/20.
//  Copyright © 2020 Cameron Stuart. All rights reserved.
//

#import "IRBEntry.h"

@implementation IRBEntry

- (instancetype)initWithTitle:(NSString *)title bodyText:(NSString *)bodyText timestamp:(NSDate *)timestamp
{
    
    self = [super init];
    if (self)
    {
        _title = title;
        _bodyText = bodyText;
        _timestamp = timestamp;
    }
    return self;
}

@end
