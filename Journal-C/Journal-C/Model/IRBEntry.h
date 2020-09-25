//
//  IRBEntry.h
//  Journal-C
//
//  Created by Ian Becker on 8/10/20.
//  Copyright © 2020 Cameron Stuart. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IRBEntry : NSObject

@property (nonatomic, copy) NSString * title;
@property (nonatomic, copy) NSString * bodyText;
@property (nonatomic, copy) NSDate * timestamp;

- (instancetype) initWithTitle:(NSString *)title
                      bodyText:(NSString *)bodyText
                     timestamp:(NSDate *)timestamp;

- (instancetype)initWithTitle:(NSString *)title bodytext:(NSString *)bodyText;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)dictionaryCopy;

@end

NS_ASSUME_NONNULL_END
