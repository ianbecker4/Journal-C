//
//  IRBEntry.m
//  Journal-C
//
//  Created by Ian Becker on 8/10/20.
//  Copyright © 2020 Cameron Stuart. All rights reserved.
//

#import "IRBEntry.h"

static NSString * const TitleKey = @"title";
static NSString * const TextKey = @"text";
static NSString * const TimestampKey = @"timestamp";

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

- (instancetype)initWithTitle:(NSString *)title bodytext:(NSString *)bodyText
{
    self = [self initWithTitle:title bodyText:bodyText timestamp:[NSDate date]];
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSString *title = dictionary[TitleKey];
    NSString *bodyText = dictionary[TextKey];
    NSString *timestamp = dictionary[TimestampKey];
    return [self initWithTitle:title bodyText:bodyText timestamp:timestamp];
}

- (NSDictionary *)dictionaryCopy
{
    return @{TitleKey: self.title,
             TextKey: self.bodyText,
             TimestampKey: self.timestamp};
}

- (BOOL)isEqual:(id)object
{
    if (![object isKindOfClass:[IRBEntry class]]) { return NO; }
    return [[self dictionaryCopy] isEqualToDictionary:[(IRBEntry *)object dictionaryCopy]];
}

@end
