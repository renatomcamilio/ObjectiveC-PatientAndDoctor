//
//  DPDoctor.m
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "DPDoctor.h"
#import "DPPatient.h"
#import "DPDoctorSymptomsKnowledgeBase.h"
#import "DPPatientPrescriptionsBase.h"

@implementation DPDoctor

- (NSString *)whatIsYourSpecialization {
    return [NSString stringWithFormat:@"It's %@", self.specialization];
}

- (NSString *)whatIsYourName {
    return [NSString stringWithFormat:@"My name is %@", self.name];
}

- (void)trackPatient:(DPPatient *)patient {
    NSLog(@"So, how may I help you with, %@?", patient.name);
    [self.acceptedPatients addObject:patient];
}

- (void)receivePerson:(DPPerson *)person {
    [super receivePerson:person];
    
    if ([person isKindOfClass:[DPPatient class]]) {
        DPPatient *patient = (DPPatient *)person;
        
        if (patient.hasHealthCard) {
            [self trackPatient:patient];
        } else {
            NSLog(@"Sorry, %@! You don't have a card.", patient.name);
        }
    } else {
        NSLog(@"You're just visiting me, isn'st you?");
    }
}

- (void)requestMedication:(NSArray *)symptoms forPatient:(DPPatient *)patient {
    [self writePrescription:symptoms forPatient:patient];
}

#pragma mark - Private stuff
- (NSString *)writePrescription:(NSArray *)symptoms forPatient:(DPPatient *)patient {
    NSString *prescription = [[NSString alloc] init];
    
    if ([self.acceptedPatients containsObject:patient]) {
        DPDoctorSymptomsKnowledgeBase *knowledgeBase = [[DPDoctorSymptomsKnowledgeBase alloc] init];
        
        prescription = [knowledgeBase prescriptionForSymptoms:symptoms];
        DPPatientPrescriptionsBase *prescriptionBase = [DPPatientPrescriptionsBase sharedInstance];
        [prescriptionBase addPrescription:prescription withPatient:patient];
        
        return prescription;
    }
    
    return [NSString stringWithFormat:@"Sorry %@, but you need to visit me first, so I can know you better before prescripting anything.",
            patient.name];
}

#pragma mark - Initialization
- (id)initWithName:(NSString *)name andSpecialization:(NSString *)specialization {
    self = [super init];
    
    if (self) {
        self.name = name;
        self.specialization = specialization;
        self.acceptedPatients = [[NSMutableArray alloc] init];
    }
    
    return self;
}

#pragma mark - Override
- (NSString *)description {
    return [NSString stringWithFormat:@"<%@, %@, %@>\n", self.name, self.specialization, self.acceptedPatients];
}

@end

