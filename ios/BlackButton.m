//  Created by react-native-create-bridge
#import <Foundation/Foundation.h>
#import "BlackButton.h"

// import RCTEventDispatcher
#if __has_include(<React/RCTEventDispatcher.h>)
#import <React/RCTEventDispatcher.h>
#elif __has_include(“RCTEventDispatcher.h”)
#import “RCTEventDispatcher.h”
#else
#import “React/RCTEventDispatcher.h” // Required when used as a Pod in a Swift project
#endif


@implementation BlackButton : UIView  {

  RCTEventDispatcher *_eventDispatcher;
  UIButton * _blackButton;
  
}

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{
  if ((self = [super init])) {
    _eventDispatcher = eventDispatcher;
    _blackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 80)];
    _blackButton.backgroundColor = [UIColor blackColor];
    [_blackButton setTitle:@"Text" forState:UIControlStateNormal];
    [_blackButton setTitle:@"ぽちね" forState:UIControlStateHighlighted];
    [_blackButton setNeedsDisplay];
  }
    
  return self;
}
- (void)layoutSubviews
{
  [super layoutSubviews];
  [self addSubview:_blackButton];
  
}
@end
