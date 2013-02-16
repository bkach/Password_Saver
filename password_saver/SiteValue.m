//
//  SiteValue.m
//  password_saver
//
//  Created by Boris Kachscovsky on 2/13/13.
//  Copyright (c) 2013 Boris Kachscovsky. All rights reserved.
//

#import "SiteValue.h"

@implementation SiteValue

@synthesize count, username, password;

// siteValueWithUsername - returns a SiteValue with the given username, password, and count
+ (SiteValue*) siteValueWithUsername: (NSString*) username
                         andPassword: (NSString*) password
                            andCount: (int) count
{    
    SiteValue *newSiteValue = [SiteValue new];
    [newSiteValue setUsername:username];
    [newSiteValue setPassword:password];
    [newSiteValue setCount:count];
    return newSiteValue;
};

- (SiteValue*) initWithUsername: (NSString*) myUsername
                    andPassword: (NSString*) myPassword
                       andCount: (int) myCount
{
    self = [super init];
    [self setUsername:myUsername];
    [self setPassword:myPassword];
    [self setCount:myCount];
    return self;
}

- (void) incrCount
{
    [self setCount:count+1];
}

- (void) printContents;
{
    NSLog(@"\nUsername: %@\nPassword: %@\nCount: %d", [self username], [self password], [self count]);
}

- (id)copyWithZone:(NSZone *)zone
{
    SiteValue *copy = [SiteValue new];
    
    [copy setUsername:[self username]];
    [copy setPassword:[self password]];
    [copy setCount:[self count]];

    return copy;
}

@end
