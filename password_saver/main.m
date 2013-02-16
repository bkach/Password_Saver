//
//  main.m
//  password_saver
//
//  Created by Boris Kachscovsky on 2/13/13.
//  Copyright (c) 2013 Boris Kachscovsky. All rights reserved.
//
// Simple program that creates a dictonary of passwords and usernames for each website

#import <Foundation/Foundation.h>
#import "SiteValue.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSArray *websites = [NSArray arrayWithObjects:@"Gmail", @"Yahoo", @"NYU", @"Amazon", @"AOL", @"Ebay", @"Etrade", @"Facebook", @"Myspace", @"Quora", nil];
        
        NSMutableDictionary *login = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                      ([[SiteValue new] initWithUsername:@"Username1" andPassword:@"Password1" andCount:1]),
                                      [websites objectAtIndex:0],
                                      ([[SiteValue new] initWithUsername:@"Username2" andPassword:@"Password2" andCount:1]),
                                      [websites objectAtIndex:1],
                                      ([[SiteValue new] initWithUsername:@"Username3" andPassword:@"Password3" andCount:1]),
                                      [websites objectAtIndex:2],
                                      ([[SiteValue new] initWithUsername:@"Username4" andPassword:@"Password4" andCount:1]),
                                      [websites objectAtIndex:3],
                                      ([[SiteValue new] initWithUsername:@"Username5" andPassword:@"Password5" andCount:1]),
                                      [websites objectAtIndex:4],
                                      ([[SiteValue new] initWithUsername:@"Username6" andPassword:@"Password6" andCount:1]),
                                      [websites objectAtIndex:5],
                                      ([[SiteValue new] initWithUsername:@"Username7" andPassword:@"Password7" andCount:1]),
                                      [websites objectAtIndex:6],
                                      ([[SiteValue new] initWithUsername:@"Username8" andPassword:@"Password8" andCount:1]),
                                      [websites objectAtIndex:7],
                                      ([[SiteValue new] initWithUsername:@"Username9" andPassword:@"Password9" andCount:1]),
                                      [websites objectAtIndex:8],
                                      ([[SiteValue new] initWithUsername:@"Username10" andPassword:@"Password10" andCount:1]),
                                      [websites objectAtIndex:9],
                                      nil];
        // Pass 1 - Print out entries
        NSLog(@"\n\n\nAll Entries:\n\n\n");
        for ( NSString *key in login )
            NSLog(@"\nKey: %@%@", key, [login[key] printContents]);
        
        // Delete entries
        [login removeObjectForKey:websites[9]];
        [login removeObjectForKey:websites[8]];
        [login removeObjectForKey:websites[7]];
        
        // Pass 2 - Print out new list
        NSLog(@"\n\n\nThree Entries Deleted:\n\n\n");
        for ( NSString *key in login )
            NSLog(@"\nKey: %@%@", key, [login[key] printContents]);
        
        // Pass 3 - Increment each record and print it out
        NSLog(@"\n\n\nAll Records Incremented:\n\n\n");
        for ( NSString *key in login ){
            [login[key] incrCount];
            NSLog(@"\nKey: %@%@", key, [login[key] printContents]);
        }
        
    }
    return 0;
}

