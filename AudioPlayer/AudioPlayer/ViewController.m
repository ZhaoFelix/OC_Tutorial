//
//  ViewController.m
//  AudioPlayer
//
//  Created by Felix on 2017/11/9.
//  Copyright © 2017年 Felix. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _playBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _playBtn.frame = CGRectMake(100, 100, 100, 40);
    [_playBtn setTitle:@"播放" forState:UIControlStateNormal];
    [_playBtn addTarget:self action:@selector(playMusic) forControlEvents:UIControlEventTouchUpInside];
    
    _pauseBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _pauseBtn.frame = CGRectMake(100, 160, 100, 40);
    [_pauseBtn setTitle:@"暂停" forState:UIControlStateNormal];
    [_pauseBtn addTarget:self action:@selector(pauseMusic) forControlEvents:UIControlEventTouchUpInside];
    
    _stopBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _stopBtn.frame = CGRectMake(100, 220, 100, 40);
    [_stopBtn setTitle:@"停止" forState:UIControlStateNormal];
    [_stopBtn addTarget:self action:@selector(stopMusic) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_playBtn];
    [self.view addSubview:_pauseBtn];
    [self.view addSubview:_stopBtn];
    
    _musicProgress = [[UIProgressView alloc]initWithFrame:CGRectMake(10, 300, 300, 20)];
    _musicProgress.progress = 0;
    
    _slider = [[UISlider alloc]initWithFrame:CGRectMake(10, 360, 300, 20)];
    _slider.maximumValue = 100;
    _slider.minimumValue = 0;
    [_slider addTarget:self action:@selector(valueChange:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
    [self.view addSubview:_musicProgress];
    [self createAVPlayer];
}

-(void)createAVPlayer {
    //获取本地的资源文件路径
    NSString* str = [[NSBundle mainBundle] pathForResource:@"烟火" ofType:@"mp3"];
    NSURL* urlMusic = [NSURL fileURLWithPath:str];
    _player = [[AVAudioPlayer alloc]initWithContentsOfURL:urlMusic error:nil];
    [_player prepareToPlay];//准备播放，解码
    _player.numberOfLoops = -1;//循环播放的次数,-1表示无限循环
    _player.volume = 0.5;//设置音量的大小，声音的范围是0~1
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateProgress) userInfo:nil repeats:YES];
    
    
}
-(void) playMusic {
    [_player play];
}
-(void) pauseMusic {
    [_player pause];
}
-(void) stopMusic {
    [_player stop];
    _player.currentTime = 0;//当前播放时间清零
}
//当音乐播放完成时调用
-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag {
    [_timer invalidate];
}
//更新进度条
-(void)updateProgress{
    _musicProgress.progress = _player.currentTime/_player.duration;
}
//调节音量
-(void)valueChange:(UISlider *)slider{
    _player.volume = slider.value/100;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
