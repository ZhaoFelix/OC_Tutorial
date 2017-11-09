//
//  ViewController.h
//  AudioPlayer
//
//  Created by Felix on 2017/11/9.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import <UIKit/UIKit.h>
//导入系统库文件
#import <AVFoundation/AVFoundation.h>
@interface ViewController : UIViewController <AVAudioPlayerDelegate>

{
    UIButton* _playBtn;//播放
    UIButton* _pauseBtn;//暂停播放
    UIButton* _stopBtn;//停止播放
    UIProgressView* _musicProgress;//播放进度条
    UISlider* _slider;//调整音频的音量
    UISwitch* _volumOn;//静音
    AVAudioPlayer* _player;//音频播放器
    NSTimer* _timer;//定时器
    
}
@end

