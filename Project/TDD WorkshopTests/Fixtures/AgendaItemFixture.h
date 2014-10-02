//
// Copyright (c) 2014 Mobile Warsaw. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "AgendaItem.h"


@interface AgendaItemFixture : NSObject
@property(nonatomic, copy) NSString *title;
@property(nonatomic, assign) AgendaItemType type;
@property(nonatomic, strong) NSDate *startDate;
@property(nonatomic, assign) NSTimeInterval duration;
@property(nonatomic, strong) NSArray *speakers;

@end
