//
//  Character.m
//  HSInterview
//
//  Created by Joshua Kaden on 12/29/14.
//  Copyright (c) 2014 Samantha John. All rights reserved.
//

#import "Character.h"

@interface Character ()

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *bio;
@property (nonatomic, strong) NSString *imageName;

@end

@implementation Character

+ (instancetype)newWithName:(NSString *)name bio:(NSString *)bio imageName:(NSString *)imageName
{
    Character *character = [[Character alloc] initWithName:name bio:bio imageName:imageName];
    return character;
}

- (instancetype)initWithName:(NSString *)name bio:(NSString *)bio imageName:(NSString *)imageName
{
    self = [super init];
    self.name = [name copy];
    self.bio = [bio copy];
    self.imageName = [imageName copy];
    return self;
}

- (UIImage *)image
{
    return [UIImage imageNamed:self.imageName];
}

@end
