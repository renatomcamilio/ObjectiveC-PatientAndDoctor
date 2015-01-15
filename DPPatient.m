//
//  DPPatient.m
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "DPPatient.h"
#import "DPDoctor.h"

@implementation DPPatient

- (NSString *)whatIsYourName {
    return [NSString stringWithFormat:@"My name is %@", self.name];
}

- (NSString *)whatIsYourOccupation {
    return [NSString stringWithFormat:@"My occupation is %@", self.occupation];
}

- (NSString *)howOldAreYou {
    return [NSString stringWithFormat:@"I'm %@ years old", self.age];
}

#pragma mark - Initialization
- (id)initWithName:(NSString *)name andAge:(NSNumber *)age andOccupation:(NSString *)occupation andHasHealthCard:(BOOL)hasHealthCard {
    self = [super init];
    
    if (self) {
        self.name = name;
        self.age = age;
        self.occupation = occupation;
        self.hasHealthCard = hasHealthCard;
    }
    
    return self;
}

#pragma mark - Override
- (NSString *)description {
    return [NSString stringWithFormat:@"name: %@\nage: %@\noccupation: %@\n", self.name, self.age, self.occupation];
}

@end
