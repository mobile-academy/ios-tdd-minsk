//
// Copyright (c) 2014 Mobile Warsaw. All rights reserved.
//

#import "AgendaItemFixture+Fixture.h"
#import "Speaker.h"

const NSInteger HalfAnHour = 30 * 60;

@implementation AgendaItem (Fixture)

+ (instancetype)fixture
{
    NSArray *const speakers = @[[[Speaker alloc] initWithName:@"Bill Gates" photo:nil]];
    AgendaItem *newItem = [[self alloc] initWithTitle:@"Spec Session"
                                                 type:AgendaItemTypeWorkshop
                                            startDate:[NSDate dateWithTimeIntervalSince1970:0]
                                             duration:HalfAnHour
                                             speakers:speakers];
    return newItem;
}

@end
