//
//  HSCharacter.m
//  HSInterview
//
//  Created by Samantha John on 12/29/14.
//  Copyright (c) 2014 Samantha John. All rights reserved.
//

#import "HSCharacter.h"

@implementation HSCharacter

+ (instancetype)newWithBio:(NSString *)bio name:(NSString *)name imageName:(NSString *)imageName
{
	HSCharacter *character = [self new];
	character.bio = bio;
	character.name = name;
	character.image = [UIImage imageNamed:imageName];
	return character;
}

+ (NSArray *)buildCharacterList
{	
	return @[
			 [self newWithBio:@"Cosmic Cody was named by the winner of our Hopscotch Halloween Contest (HHC)." name:@"Cosmic Cody" imageName:@"sketchy-astro"],
			 [self newWithBio:@"StarGirl is actually from earth, the helmet is a ruse." name:@"Star Girl" imageName:@"sketchy-stargirl"],
			 [self newWithBio:@"Robo is from the year 3022 and has come back to the present in order to take over the world (before any other robots can)." name:@"Robo" imageName:@"sketchy-robo"],
			 [self newWithBio:@"This bird is beautiful and perfect. She only regrets you cannot see her in full color regalia" name:@"Birdy" imageName:@"sketchy-bird"]
			 ];
}

@end
