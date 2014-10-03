//  
//  Copyright (c) 2014 Mobile Warsaw All rights reserved.
//  


#import "StreamItem+FakeModel.h"


@implementation StreamItem (FakeModel)
+ (NSArray *)fakeStreamItems {
    NSMutableArray *items = [NSMutableArray new];
    for (NSInteger i = 0; i < 15; ++i) {
        UIImage *image = [UIImage imageNamed:@"fakeImage.png"];
        StreamItem *item = [StreamItem new];
        item.title = [NSString stringWithFormat:@"Stream Item #%d", i];
        item.size = CGSizeMake(502, 492);
        item.data = UIImagePNGRepresentation(image);
        [items addObject:item];
    }
    return items;
}

@end