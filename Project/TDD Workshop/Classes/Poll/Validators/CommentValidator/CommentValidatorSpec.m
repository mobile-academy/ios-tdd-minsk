#import "Specs.h"

#import "CommentValidator.h"
#import "UITextField+TextControl.h"

SpecBegin(CommentValidator)

describe(@"CommentValidator", ^{
    __block CommentValidator *validator;

    beforeEach(^{
        validator = [CommentValidator new];
    });

    afterEach(^{
        validator = nil;
    });

    describe(@"validation", ^{

        __block UITextField *textField;

        beforeEach(^{
            textField = [[UITextField alloc] init];
        });

        context(@"when the text has is too short", ^{

            __block BOOL isValid;


            beforeEach(^{
                textField.text = @"Fixture Long Text";
                isValid = [validator validateTextControl:textField];
            });

            it(@"should be valid", ^{
                expect(isValid).to.beTruthy();
            });

            it(@"should clear the text field", ^{
                expect(textField.text).to.equal(@"Fixture Long Text");
            });
        });

        context(@"when the text length is ok", ^{
            __block BOOL isValid;

            beforeEach(^{
                textField.text = @"Short";
                isValid = [validator validateTextControl:textField];
            });

            it(@"should not be valid", ^{
                expect(isValid).to.beFalsy();
            });

            it(@"should have no text", ^{
                expect(textField.text.length).to.equal(0);
            });
        });
    });

});

SpecEnd
