#import "SpecValidatorFixture.h"


@implementation SpecValidatorFixture {

}

- (BOOL)validateTextControl:(NSString *)text {
    self.didCallValidateText = YES;
    return NO;
}

@end
