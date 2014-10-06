#import <Foundation/Foundation.h>


@protocol TextControl

@property(nonatomic, strong) NSString *text;

@end

@protocol Validating <NSObject>
- (BOOL)validateTextControl:(id <TextControl>)textControl;
@end
