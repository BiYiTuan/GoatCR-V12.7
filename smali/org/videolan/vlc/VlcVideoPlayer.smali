.class public Lorg/videolan/vlc/VlcVideoPlayer;
.super Ljava/lang/Object;
.source "VlcVideoPlayer.java"

# interfaces
.implements Lorg/videolan/vlc/listener/MediaPlayerControl;
.implements Landroid/os/Handler$Callback;
.implements Lorg/videolan/libvlc/IVLCVout$Callback;


# static fields
.field private static final MSG_START:I = 0x8

.field private static final MSG_STOP:I = 0x9

.field private static isInstance:Z

.field private static isSaveState:Z

.field private static final sThread:Landroid/os/HandlerThread;

.field private static staticMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;


# instance fields
.field private TAG:Ljava/lang/String;

.field private abTimeEnd:J

.field private abTimeStart:J

.field private canInfo:Z

.field private canPause:Z

.field private canSeek:Z

.field private isABLoop:Z

.field private isAttachSurface:Z

.field private isAttached:Z

.field private isInitPlay:Z

.field private isInitStart:Z

.field private isLoop:Z

.field private isPlayError:Z

.field private isSeeking:Z

.field private isSufaceDelayerPlay:Z

.field private isViewLife:Z

.field private libVLC:Lorg/videolan/libvlc/LibVLC;

.field private mContext:Landroid/content/Context;

.field private final mMediaListener:Lorg/videolan/libvlc/Media$EventListener;

.field private mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

.field private mVideoHandler:Landroid/os/Handler;

.field private mainHandler:Landroid/os/Handler;

.field private mediaListenerEvent:Lorg/videolan/vlc/listener/MediaListenerEvent;

.field private othereMedia:Z

.field private path:Ljava/lang/String;

.field private speed:F

.field private surface:Landroid/graphics/SurfaceTexture;

.field private final tag:Ljava/lang/String;

.field private videoSizeChange:Lorg/videolan/vlc/listener/VideoSizeChange;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VlcVideoPlayThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/videolan/vlc/VlcVideoPlayer;->sThread:Landroid/os/HandlerThread;

    .line 60
    sget-object v0, Lorg/videolan/vlc/VlcVideoPlayer;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "VideoMediaLogic"

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->TAG:Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isLoop:Z

    .line 141
    const-string v0, "VideoMediaLogic"

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->tag:Ljava/lang/String;

    .line 286
    new-instance v0, Lorg/videolan/vlc/VlcVideoPlayer$4;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/VlcVideoPlayer$4;-><init>(Lorg/videolan/vlc/VlcVideoPlayer;)V

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaListener:Lorg/videolan/libvlc/Media$EventListener;

    .line 618
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->speed:F

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lorg/videolan/vlc/VlcVideoPlayer;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mVideoHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mainHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/VlcVideoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoPlayer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isViewLife:Z

    return v0
.end method

.method static synthetic access$002(Lorg/videolan/vlc/VlcVideoPlayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isViewLife:Z

    return p1
.end method

.method static synthetic access$100(Lorg/videolan/vlc/VlcVideoPlayer;)Lorg/videolan/vlc/listener/MediaListenerEvent;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoPlayer;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mediaListenerEvent:Lorg/videolan/vlc/listener/MediaListenerEvent;

    return-object v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/VlcVideoPlayer;Lorg/videolan/libvlc/MediaPlayer$Event;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoPlayer;
    .param p1, "x1"    # Lorg/videolan/libvlc/MediaPlayer$Event;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/videolan/vlc/VlcVideoPlayer;->onEventNative(Lorg/videolan/libvlc/MediaPlayer$Event;)V

    return-void
.end method

.method static synthetic access$300(Lorg/videolan/vlc/VlcVideoPlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoPlayer;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/videolan/vlc/VlcVideoPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoPlayer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isPlayError:Z

    return v0
.end method

.method private static getMediaPlayer(Landroid/content/Context;)Lorg/videolan/libvlc/MediaPlayer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-boolean v0, Lorg/videolan/vlc/VlcVideoPlayer;->isInstance:Z

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lorg/videolan/vlc/VlcVideoPlayer;->staticMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer;

    invoke-static {p0}, Lorg/videolan/vlc/util/VLCInstance;->get(Landroid/content/Context;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    sput-object v0, Lorg/videolan/vlc/VlcVideoPlayer;->staticMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 56
    :cond_0
    sget-object v0, Lorg/videolan/vlc/VlcVideoPlayer;->staticMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    :goto_0
    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer;

    invoke-static {p0}, Lorg/videolan/vlc/util/VLCInstance;->get(Landroid/content/Context;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    goto :goto_0
.end method

.method private loadMedia()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    sget-boolean v1, Lorg/videolan/vlc/VlcVideoPlayer;->isSaveState:Z

    if-eqz v1, :cond_0

    .line 250
    sput-boolean v3, Lorg/videolan/vlc/VlcVideoPlayer;->isSaveState:Z

    .line 251
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getMedia()Lorg/videolan/libvlc/Media;

    move-result-object v0

    .line 252
    .local v0, "media":Lorg/videolan/libvlc/Media;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    .line 254
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canPause:Z

    .line 255
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canInfo:Z

    .line 284
    :goto_0
    return-void

    .line 264
    .end local v0    # "media":Lorg/videolan/libvlc/Media;
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->path:Ljava/lang/String;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->libVLC:Lorg/videolan/libvlc/LibVLC;

    iget-object v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Landroid/net/Uri;)V

    .line 267
    .restart local v0    # "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {v0, v3, v3}, Lorg/videolan/libvlc/Media;->setHWDecoderEnabled(ZZ)V

    .line 269
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaListener:Lorg/videolan/libvlc/Media$EventListener;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/Media;->setEventListener(Lorg/videolan/libvlc/Media$EventListener;)V

    .line 271
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    .line 272
    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    goto :goto_0

    .line 274
    .end local v0    # "media":Lorg/videolan/libvlc/Media;
    :cond_1
    new-instance v0, Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->libVLC:Lorg/videolan/libvlc/LibVLC;

    iget-object v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->path:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 278
    .restart local v0    # "media":Lorg/videolan/libvlc/Media;
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaListener:Lorg/videolan/libvlc/Media$EventListener;

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/Media;->setEventListener(Lorg/videolan/libvlc/Media$EventListener;)V

    .line 280
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1, v0}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    .line 281
    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    goto :goto_0
.end method

.method private onEventNative(Lorg/videolan/libvlc/MediaPlayer$Event;)V
    .locals 4
    .param p1, "event"    # Lorg/videolan/libvlc/MediaPlayer$Event;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 399
    iget v0, p1, Lorg/videolan/libvlc/MediaPlayer$Event;->type:I

    packed-switch v0, :pswitch_data_0

    .line 507
    :pswitch_0
    const-string v0, "VideoMediaLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/videolan/libvlc/MediaPlayer$Event;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 401
    :pswitch_2
    iput-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canInfo:Z

    .line 402
    iput-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    .line 403
    iput-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canPause:Z

    .line 404
    const-string v0, "VideoMediaLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopped  isLoop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isLoop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->reStartPlay()V

    goto :goto_0

    .line 408
    :pswitch_3
    const-string v0, "VideoMediaLogic"

    const-string v1, "EndReached"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :pswitch_4
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isPlayError:Z

    .line 412
    iput-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canInfo:Z

    .line 413
    const-string v0, "VideoMediaLogic"

    const-string v1, "EncounteredError"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/VlcVideoPlayer$7;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/VlcVideoPlayer$7;-><init>(Lorg/videolan/vlc/VlcVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 423
    :pswitch_5
    const-string v0, "VideoMediaLogic"

    const-string v1, "Opening"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canInfo:Z

    .line 425
    iput v3, p0, Lorg/videolan/vlc/VlcVideoPlayer;->speed:F

    .line 426
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, v3}, Lorg/videolan/libvlc/MediaPlayer;->setRate(F)V

    goto :goto_0

    .line 429
    :pswitch_6
    const-string v0, "VideoMediaLogic"

    const-string v1, "Playing"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canInfo:Z

    .line 431
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/VlcVideoPlayer$8;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/VlcVideoPlayer$8;-><init>(Lorg/videolan/vlc/VlcVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->areViewsAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    :cond_1
    const-string v0, "VideoMediaLogic"

    const-string v1, "---\u591a\u7ebf\u7a0b\u51fa\u9519----\u6ca1\u6709surface  \u7981\u6b62\u53cc\u7ebf\u7a0b\u540e\u53f0\u8fd0\u884c"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    goto/16 :goto_0

    .line 451
    :pswitch_7
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/VlcVideoPlayer$9;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/VlcVideoPlayer$9;-><init>(Lorg/videolan/vlc/VlcVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    const-string v0, "VideoMediaLogic"

    const-string v1, "Paused"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 474
    :pswitch_8
    const-string v0, "VideoMediaLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getVoutCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 477
    :pswitch_9
    const-string v0, "VideoMediaLogic"

    const-string v1, "ESAdded"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :pswitch_a
    const-string v0, "VideoMediaLogic"

    const-string v1, "ESDeleted"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 483
    :pswitch_b
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getSeekable()Z

    move-result v0

    iput-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    .line 484
    const-string v0, "VideoMediaLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeekableChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    :pswitch_c
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getPausable()Z

    move-result v0

    iput-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canPause:Z

    .line 488
    const-string v0, "VideoMediaLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PausableChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :pswitch_d
    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getBuffering()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 492
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer.Event.Buffering"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getBuffering()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_2
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/VlcVideoPlayer$10;

    invoke-direct {v1, p0, p1}, Lorg/videolan/vlc/VlcVideoPlayer$10;-><init>(Lorg/videolan/vlc/VlcVideoPlayer;Lorg/videolan/libvlc/MediaPlayer$Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 504
    :pswitch_e
    const-string v0, "VideoMediaLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/videolan/libvlc/MediaPlayer$Event;->getEsChangedType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_e
        :pswitch_0
        :pswitch_5
        :pswitch_d
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private opendVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttached:Z

    if-nez v0, :cond_2

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/VlcVideoPlayer$2;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/VlcVideoPlayer$2;-><init>(Lorg/videolan/vlc/VlcVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 244
    :cond_1
    :goto_0
    return-void

    .line 203
    :cond_2
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isSufaceDelayerPlay:Z

    .line 204
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    .line 205
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canPause:Z

    .line 206
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isPlayError:Z

    .line 207
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->libVLC:Lorg/videolan/libvlc/LibVLC;

    if-nez v0, :cond_3

    .line 208
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/videolan/vlc/util/VLCInstance;->get(Landroid/content/Context;)Lorg/videolan/libvlc/LibVLC;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->libVLC:Lorg/videolan/libvlc/LibVLC;

    .line 210
    :cond_3
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_4

    .line 211
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->getMediaPlayer(Landroid/content/Context;)Lorg/videolan/libvlc/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 213
    :cond_4
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lorg/videolan/vlc/util/VLCOptions;->getAout(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setAudioOutput(Ljava/lang/String;)Z

    .line 214
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/videolan/vlc/util/VLCOptions;->getEqualizer(Landroid/content/Context;)Lorg/videolan/libvlc/MediaPlayer$Equalizer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setEqualizer(Lorg/videolan/libvlc/MediaPlayer$Equalizer;)Z

    .line 215
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttachSurface:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->areViewsAttached()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->detachViews()V

    .line 218
    :cond_5
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->othereMedia:Z

    if-nez v0, :cond_6

    .line 219
    invoke-direct {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->loadMedia()V

    .line 221
    :cond_6
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->areViewsAttached()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttached:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->surface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_7

    .line 222
    iput-boolean v3, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttachSurface:Z

    .line 223
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->surface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Lorg/videolan/libvlc/IVLCVout;->setVideoSurface(Landroid/graphics/SurfaceTexture;)V

    .line 224
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout;->addCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V

    .line 225
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->attachViews()V

    .line 227
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTitleDisplay(II)V

    .line 228
    const-string v0, "VideoMediaLogic"

    const-string v1, "setVideoSurface   attachViews"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_7
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    new-instance v1, Lorg/videolan/vlc/VlcVideoPlayer$3;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/VlcVideoPlayer$3;-><init>(Lorg/videolan/vlc/VlcVideoPlayer;)V

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V

    .line 236
    iput-boolean v3, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitPlay:Z

    .line 237
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->othereMedia:Z

    .line 238
    const-string v0, "VideoMediaLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isInitStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttached:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitStart:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttachSurface:Z

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    goto/16 :goto_0
.end method

.method private reStartPlay()V
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttached:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isLoop:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    const-string v0, "VideoMediaLogic"

    const-string v1, "reStartPlay setMedia"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getMedia()Lorg/videolan/libvlc/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    .line 343
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttached:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/VlcVideoPlayer$6;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/VlcVideoPlayer$6;-><init>(Lorg/videolan/vlc/VlcVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 358
    const-string v1, "VideoMediaLogic"

    const-string v2, "release"

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iput-boolean v4, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    .line 360
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitPlay:Z

    if-eqz v1, :cond_2

    .line 361
    const-string v1, "VideoMediaLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release SaveState  isAttachSurface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttachSurface:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iput-boolean v4, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitPlay:Z

    .line 363
    iget-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttachSurface:Z

    if-eqz v1, :cond_0

    .line 364
    iput-boolean v4, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttachSurface:Z

    .line 365
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v1

    invoke-interface {v1}, Lorg/videolan/libvlc/IVLCVout;->detachViews()V

    .line 367
    :cond_0
    sget-boolean v1, Lorg/videolan/vlc/VlcVideoPlayer;->isSaveState:Z

    if-eqz v1, :cond_3

    .line 368
    iget-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canPause:Z

    if-eqz v1, :cond_1

    .line 369
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 381
    :cond_1
    :goto_0
    const-string v1, "VideoMediaLogic"

    const-string v2, "release over"

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_2
    iput-boolean v4, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canPause:Z

    .line 384
    iput-boolean v4, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitStart:Z

    .line 385
    return-void

    .line 371
    :cond_3
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getMedia()Lorg/videolan/libvlc/Media;

    move-result-object v0

    .line 372
    .local v0, "media":Lorg/videolan/libvlc/Media;
    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0, v5}, Lorg/videolan/libvlc/Media;->setEventListener(Lorg/videolan/libvlc/Media$EventListener;)V

    .line 374
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->stop()V

    .line 375
    const-string v1, "VideoMediaLogic"

    const-string v2, "release setMedia null"

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1, v5}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    .line 377
    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    .line 378
    sput-boolean v4, Lorg/videolan/vlc/VlcVideoPlayer;->isSaveState:Z

    goto :goto_0
.end method


# virtual methods
.method public canControl()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canPause:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canInfo:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 548
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canInfo:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaPlayer;->getPosition()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 550
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canInfo:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getLength()J

    move-result-wide v0

    .line 543
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMirror()Z
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x0

    return v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .prologue
    .line 632
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getRate()F

    move-result v0

    .line 634
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->speed:F

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 73
    const-class v1, Lorg/videolan/vlc/VlcVideoPlayer;

    monitor-enter v1

    .line 74
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_0
    monitor-exit v1

    .line 89
    const/4 v0, 0x1

    return v0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----HandlerThread init 1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitStart:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitStart:Z

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->opendVideo()V

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----HandlerThread init 2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitStart:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 82
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----HandlerThread stop 3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitStart:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->release()V

    .line 84
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----HandlerThread stop 4="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitStart:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isLoop()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isLoop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 598
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepare()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isPlayError:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow(Z)V
    .locals 0
    .param p1, "isViewLife"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isViewLife:Z

    .line 167
    return-void
.end method

.method public onDestory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 388
    iput-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->videoSizeChange:Lorg/videolan/vlc/listener/VideoSizeChange;

    .line 389
    invoke-direct {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->release()V

    .line 390
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 393
    iput-object v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 396
    :cond_0
    return-void
.end method

.method public onHardwareAccelerationError(Lorg/videolan/libvlc/IVLCVout;)V
    .locals 0
    .param p1, "vlcVout"    # Lorg/videolan/libvlc/IVLCVout;

    .prologue
    .line 672
    return-void
.end method

.method public onNewLayout(Lorg/videolan/libvlc/IVLCVout;IIIIII)V
    .locals 7
    .param p1, "vlcVout"    # Lorg/videolan/libvlc/IVLCVout;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "visibleWidth"    # I
    .param p5, "visibleHeight"    # I
    .param p6, "sarNum"    # I
    .param p7, "sarDen"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->videoSizeChange:Lorg/videolan/vlc/listener/VideoSizeChange;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->videoSizeChange:Lorg/videolan/vlc/listener/VideoSizeChange;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-interface/range {v0 .. v6}, Lorg/videolan/vlc/listener/VideoSizeChange;->onVideoSizeChanged(IIIIII)V

    .line 667
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/VlcVideoPlayer$1;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/VlcVideoPlayer$1;-><init>(Lorg/videolan/vlc/VlcVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mVideoHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void
.end method

.method public onSurfaceTextureDestroyed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iput-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttached:Z

    .line 158
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttachSurface:Z

    if-eqz v0, :cond_0

    .line 159
    iput-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttachSurface:Z

    .line 160
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->pause()V

    .line 161
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->getVLCVout()Lorg/videolan/libvlc/IVLCVout;

    move-result-object v0

    invoke-interface {v0}, Lorg/videolan/libvlc/IVLCVout;->detachViews()V

    .line 163
    :cond_0
    return-void
.end method

.method public onSurfacesCreated(Lorg/videolan/libvlc/IVLCVout;)V
    .locals 0
    .param p1, "vlcVout"    # Lorg/videolan/libvlc/IVLCVout;

    .prologue
    .line 677
    return-void
.end method

.method public onSurfacesDestroyed(Lorg/videolan/libvlc/IVLCVout;)V
    .locals 0
    .param p1, "vlcVout"    # Lorg/videolan/libvlc/IVLCVout;

    .prologue
    .line 682
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canPause:Z

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 535
    :cond_0
    return-void
.end method

.method public saveState()V
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitPlay:Z

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    sput-boolean v0, Lorg/videolan/vlc/VlcVideoPlayer;->isSaveState:Z

    .line 316
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->onStop()V

    .line 318
    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 5
    .param p1, "pos"    # J

    .prologue
    .line 557
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isSeeking:Z

    if-nez v2, :cond_0

    .line 559
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isSeeking:Z

    .line 560
    iget-object v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v2, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->setTime(J)J

    move-result-wide v0

    .line 561
    .local v0, "p":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seekTo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 562
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isSeeking:Z

    .line 567
    .end local v0    # "p":J
    :cond_0
    return-void
.end method

.method public setABLoop(Z)V
    .locals 0
    .param p1, "isABLoop"    # Z

    .prologue
    .line 571
    iput-boolean p1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isABLoop:Z

    .line 573
    return-void
.end method

.method public setABLoop(JJ)Z
    .locals 7
    .param p1, "abTimeA"    # J
    .param p3, "abTimeB"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 577
    iget-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isABLoop:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    if-eqz v1, :cond_1

    .line 578
    sub-long v2, p3, p1

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 579
    const-string v1, "VideoMediaLogic"

    const-string v2, "\u65f6\u95f4\u5c11\u4e8e1\u79d2"

    invoke-static {v1, v2}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_0
    return v0

    .line 582
    :cond_0
    iput-wide p1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->abTimeStart:J

    .line 583
    iput-wide p3, p0, Lorg/videolan/vlc/VlcVideoPlayer;->abTimeEnd:J

    .line 584
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->setTime(J)J

    .line 585
    const/4 v0, 0x1

    goto :goto_0

    .line 587
    :cond_1
    iput-wide v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->abTimeStart:J

    .line 588
    iput-wide v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->abTimeEnd:J

    goto :goto_0
.end method

.method public setInstance(Z)V
    .locals 0
    .param p1, "isInstance"    # Z

    .prologue
    .line 67
    sput-boolean p1, Lorg/videolan/vlc/VlcVideoPlayer;->isInstance:Z

    .line 68
    return-void
.end method

.method public setLoop(Z)V
    .locals 0
    .param p1, "isLoop"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isLoop:Z

    .line 172
    return-void
.end method

.method public setMedia(Lorg/videolan/libvlc/Media;)V
    .locals 1
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->othereMedia:Z

    .line 131
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->getMediaPlayer(Landroid/content/Context;)Lorg/videolan/libvlc/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    .line 133
    return-void
.end method

.method public setMediaListenerEvent(Lorg/videolan/vlc/listener/MediaListenerEvent;)V
    .locals 0
    .param p1, "mediaListenerEvent"    # Lorg/videolan/vlc/listener/MediaListenerEvent;

    .prologue
    .line 652
    iput-object p1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mediaListenerEvent:Lorg/videolan/vlc/listener/MediaListenerEvent;

    .line 653
    return-void
.end method

.method public setMediaPlayer(Lorg/videolan/libvlc/LibVLC;)V
    .locals 1
    .param p1, "libVLC"    # Lorg/videolan/libvlc/LibVLC;

    .prologue
    .line 126
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer;

    invoke-direct {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;-><init>(Lorg/videolan/libvlc/LibVLC;)V

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    .line 127
    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .param p1, "mirror"    # Z

    .prologue
    .line 603
    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "playing"    # Z

    .prologue
    .line 644
    if-eqz p1, :cond_0

    .line 645
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->pause()V

    .line 647
    :cond_0
    return-void
.end method

.method public setPlaybackSpeedMedia(F)Z
    .locals 2
    .param p1, "speed"    # F

    .prologue
    .line 622
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->canSeek:Z

    if-eqz v0, :cond_0

    .line 623
    iput p1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->speed:F

    .line 624
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/libvlc/MediaPlayer;->setRate(F)V

    .line 625
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/VlcVideoPlayer;->seekTo(J)V

    .line 627
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttached:Z

    .line 149
    iput-object p1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->surface:Landroid/graphics/SurfaceTexture;

    .line 150
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isSufaceDelayerPlay:Z

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isSufaceDelayerPlay:Z

    .line 152
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/VlcVideoPlayer;->startPlay(Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method

.method public setVideoSizeChange(Lorg/videolan/vlc/listener/VideoSizeChange;)V
    .locals 0
    .param p1, "videoSizeChange"    # Lorg/videolan/vlc/listener/VideoSizeChange;

    .prologue
    .line 657
    iput-object p1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->videoSizeChange:Lorg/videolan/vlc/listener/VideoSizeChange;

    .line 658
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 525
    const-string v0, "VideoMediaLogic"

    const-string v1, "start"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mMediaPlayer:Lorg/videolan/libvlc/MediaPlayer;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 528
    :cond_0
    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 322
    iput-object p1, p0, Lorg/videolan/vlc/VlcVideoPlayer;->path:Ljava/lang/String;

    .line 323
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isInitStart:Z

    .line 324
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lorg/videolan/vlc/VlcVideoPlayer$5;

    invoke-direct {v1, p0}, Lorg/videolan/vlc/VlcVideoPlayer$5;-><init>(Lorg/videolan/vlc/VlcVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isAttached:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoPlayer;->mVideoHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iput-boolean v2, p0, Lorg/videolan/vlc/VlcVideoPlayer;->isSufaceDelayerPlay:Z

    goto :goto_0
.end method
