#import "MOPHideTechSupportLoadingView.h"

@implementation MOPHideTechSupportLoadingView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.bottomImageView.hidden = YES;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.bottomImageView.hidden = YES;
}

@end
