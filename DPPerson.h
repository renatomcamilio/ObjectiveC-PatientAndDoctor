//
//  DPPerson.h
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPPerson : NSObject

@property (nonatomic, strong) NSString *name;

- (void)visitPerson:(DPPerson *)person;
- (void)receivePerson:(DPPerson *)person;

@end
