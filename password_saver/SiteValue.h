//
//  SiteValue.h
//  password_saver
//
//  Created by Boris Kachscovsky on 2/13/13.
//  Copyright (c) 2013 Boris Kachscovsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SiteValue : NSObject <NSCopying>{
    int count;
    NSString *username;
    NSString *password;
}

@property (nonatomic) int count;
@property (nonatomic) NSString *password, *username;

+ (SiteValue*) siteValueWithUsername: (NSString*) username
                         andPassword: (NSString*) password
                            andCount: (int) count;

- (SiteValue*) initWithUsername: (NSString*) username
                   andPassword: (NSString*) password
                      andCount: (int) count;

- (void) incrCount;

- (id)copyWithZone:(NSZone *)zone;

- (void) printContents;


// New object that consists of two strings and the integer count
// Getters and setters for both strings and count
// Also:
//  - A method which prints out the SiteValue class in some kind of pretty format using NSLog().
//  - A method that will increment the Count variable of a SiteValue object. 

@end
