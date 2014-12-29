//
//  CharacterDataSource.m
//  HSInterview
//
//  Created by Joshua Kaden on 12/29/14.
//  Copyright (c) 2014 Samantha John. All rights reserved.
//

#import "CharacterDataSource.h"
#import "Character.h"

@implementation CharacterDataSource

+ (NSArray *)allCharacters
{
    NSArray *names = @[
                       @"Cosmic Cody",
                       @"Star Girl",
                       @"Robo",
                       @"Birdy"
                       ];
    
    NSArray *bios = @[
                           @"Cosmic Cody was named by the winner of our Hopscotch Halloween Contest (HHC).",
                           @"StarGirl is actually from earth, the helmet is a ruse.",
                           @"Robo is from the year 3022 and has come back to the present in order to take over the world (before any other robots can).",
                           @"This bird is beautiful and perfect. She only regrets you cannot see her in full color regalia",
                           ];
    
    
    NSArray *imageNames = @[
                             @"sketchy-astro",
                             @"sketchy-stargirl",
                             @"sketchy-robo",
                             @"sketchy-bird"
                             ];
    
    NSMutableArray *characters = [NSMutableArray array];
    for (NSInteger index = 0; index < names.count; index++)  {
        Character *character = [Character newWithName:names[index] bio:bios[index] imageName:imageNames[index]];
        [characters addObject:character];
    }
    return characters.copy;
}

@end
