//
//  DPDoctorSymptomsKnowledgeBase.m
//  DoctorAndPatient
//
//  Created by Renato Camilio on 1/15/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "DPDoctorSymptomsKnowledgeBase.h"

@implementation DPDoctorSymptomsKnowledgeBase

- (NSString *)prescriptionForSymptoms:(NSArray *)symptoms {
    NSString *prescription = [[NSString alloc] init];
    
    if ([symptoms count]) {
        if ([symptoms count] > 3) {
            prescription = @"You will die in 2 days. Sorry, I can't help you...";
        } else {
            if ([symptoms indexOfObject:@"weight loss"] != NSNotFound) {
                prescription = @"You need to have lunch at McDonalds for the next 2 weeks in order to reach your ideal weight.";
            }
            if ([symptoms indexOfObject:@"stomach pain"] != NSNotFound) {
                if ([prescription length]) {
                    prescription = [prescription stringByAppendingString:@"\n"];
                }

                prescription = [prescription stringByAppendingString:@"Here's a thing that will make you feel better: LSD."];
            }
            if ([symptoms indexOfObject:@"headache"] != NSNotFound) {
                if ([prescription length]) {
                    prescription = [prescription stringByAppendingString:@"\n"];
                }
                prescription = [prescription stringByAppendingString:@"You will be fine, you just need a good night of sleep."];
            }
        }
    } else {
        prescription = @"You are visiting me as a patient or something?";
    }
    
    return prescription;
}

@end
