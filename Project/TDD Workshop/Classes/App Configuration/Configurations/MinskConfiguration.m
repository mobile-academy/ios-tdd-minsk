//  
//  Copyright (c) 2014 Mobile Warsaw All rights reserved.
//  


#import "MinskConfiguration.h"


@implementation MinskConfiguration
@synthesize parseApplicationId, parseClientId;

#pragma mark - Object life cycle

- (id)init {
    self = [super init];
    if (self) {
        self.parseApplicationId = @"eE5iysS1F1bzyWpBKZGRta6sXAk949L96wvajtaV";
        self.parseClientId = @"AaBOyqGZZIoUPXGGYvaJnuedhh4Bl2wGLFEYY3r3";
    }
    return self;
}

@end