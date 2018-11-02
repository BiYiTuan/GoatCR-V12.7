.class public Lcom/gemini/play/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/VideoView$MySizeChangeLinstener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private isStopTimeout:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mIsPause:Z

.field private mIsPrepared:Z

.field public mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMyChangeLinstener:Lcom/gemini/play/VideoView$MySizeChangeLinstener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStartWhenPrepared:Z

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private needChanged:Z

.field private path:Ljava/lang/String;

.field private playing_time:I

.field private seekComplete:Z

.field private setLoop:Z

.field private task:Ljava/lang/Runnable;

.field private timehandler:Landroid/os/Handler;

.field private v3orv2:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 50
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/gemini/play/VideoView;->TAG:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/gemini/play/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 60
    iput-object v2, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 79
    iput-object v2, p0, Lcom/gemini/play/VideoView;->path:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->v3orv2:Z

    .line 83
    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->needChanged:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->seekComplete:Z

    .line 87
    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->setLoop:Z

    .line 89
    iput-object v2, p0, Lcom/gemini/play/VideoView;->timehandler:Landroid/os/Handler;

    .line 90
    iput-object v2, p0, Lcom/gemini/play/VideoView;->task:Ljava/lang/Runnable;

    .line 91
    iput v1, p0, Lcom/gemini/play/VideoView;->playing_time:I

    .line 92
    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->isStopTimeout:Z

    .line 386
    new-instance v0, Lcom/gemini/play/VideoView$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$2;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 402
    new-instance v0, Lcom/gemini/play/VideoView$3;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$3;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 454
    new-instance v0, Lcom/gemini/play/VideoView$4;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$4;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 470
    new-instance v0, Lcom/gemini/play/VideoView$5;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$5;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 537
    new-instance v0, Lcom/gemini/play/VideoView$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$6;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 545
    new-instance v0, Lcom/gemini/play/VideoView$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$7;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 553
    new-instance v0, Lcom/gemini/play/VideoView$8;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$8;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 612
    new-instance v0, Lcom/gemini/play/VideoView$9;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$9;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 119
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mContext:Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->initVideoView()V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/gemini/play/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mContext:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->initVideoView()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const-string v0, "VideoView"

    iput-object v0, p0, Lcom/gemini/play/VideoView;->TAG:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Lcom/gemini/play/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 60
    iput-object v2, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 79
    iput-object v2, p0, Lcom/gemini/play/VideoView;->path:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->v3orv2:Z

    .line 83
    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->needChanged:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->seekComplete:Z

    .line 87
    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->setLoop:Z

    .line 89
    iput-object v2, p0, Lcom/gemini/play/VideoView;->timehandler:Landroid/os/Handler;

    .line 90
    iput-object v2, p0, Lcom/gemini/play/VideoView;->task:Ljava/lang/Runnable;

    .line 91
    iput v1, p0, Lcom/gemini/play/VideoView;->playing_time:I

    .line 92
    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->isStopTimeout:Z

    .line 386
    new-instance v0, Lcom/gemini/play/VideoView$2;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$2;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 402
    new-instance v0, Lcom/gemini/play/VideoView$3;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$3;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 454
    new-instance v0, Lcom/gemini/play/VideoView$4;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$4;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 470
    new-instance v0, Lcom/gemini/play/VideoView$5;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$5;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 537
    new-instance v0, Lcom/gemini/play/VideoView$6;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$6;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 545
    new-instance v0, Lcom/gemini/play/VideoView$7;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$7;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 553
    new-instance v0, Lcom/gemini/play/VideoView$8;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$8;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 612
    new-instance v0, Lcom/gemini/play/VideoView$9;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$9;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 131
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mContext:Landroid/content/Context;

    .line 132
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->initVideoView()V

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget v0, p0, Lcom/gemini/play/VideoView;->playing_time:I

    return v0
.end method

.method static synthetic access$002(Lcom/gemini/play/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/gemini/play/VideoView;->playing_time:I

    return p1
.end method

.method static synthetic access$100(Lcom/gemini/play/VideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->isStopTimeout:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/gemini/play/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget v0, p0, Lcom/gemini/play/VideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1002(Lcom/gemini/play/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/gemini/play/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/gemini/play/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget v0, p0, Lcom/gemini/play/VideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1102(Lcom/gemini/play/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/gemini/play/VideoView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$1200(Lcom/gemini/play/VideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/gemini/play/VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/gemini/play/VideoView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/gemini/play/VideoView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gemini/play/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/gemini/play/VideoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/gemini/play/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/gemini/play/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1802(Lcom/gemini/play/VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/gemini/play/VideoView;->seekComplete:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/VideoView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gemini/play/VideoView;->timehandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/gemini/play/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/gemini/play/VideoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/gemini/play/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget v0, p0, Lcom/gemini/play/VideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$302(Lcom/gemini/play/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/gemini/play/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/gemini/play/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget v0, p0, Lcom/gemini/play/VideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/gemini/play/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/gemini/play/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$500(Lcom/gemini/play/VideoView;)Lcom/gemini/play/VideoView$MySizeChangeLinstener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMyChangeLinstener:Lcom/gemini/play/VideoView$MySizeChangeLinstener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/gemini/play/VideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    return v0
.end method

.method static synthetic access$602(Lcom/gemini/play/VideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$700(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/gemini/play/VideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/gemini/play/VideoView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$900(Lcom/gemini/play/VideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/VideoView;

    .prologue
    .line 49
    iget v0, p0, Lcom/gemini/play/VideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$902(Lcom/gemini/play/VideoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/gemini/play/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/gemini/play/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 379
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 381
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 382
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    iget-boolean v2, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 384
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 380
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/gemini/play/VideoView;->mVideoWidth:I

    .line 189
    iput v0, p0, Lcom/gemini/play/VideoView;->mVideoHeight:I

    .line 190
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 191
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 192
    invoke-virtual {p0, v2}, Lcom/gemini/play/VideoView;->setFocusable(Z)V

    .line 193
    invoke-virtual {p0, v2}, Lcom/gemini/play/VideoView;->setFocusableInTouchMode(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->requestFocus()Z

    .line 196
    new-instance v0, Lcom/gemini/play/VideoView$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/VideoView$1;-><init>(Lcom/gemini/play/VideoView;)V

    iput-object v0, p0, Lcom/gemini/play/VideoView;->timehandler:Landroid/os/Handler;

    .line 217
    return-void
.end method

.method private openVideo()V
    .locals 4

    .prologue
    .line 253
    const-string v1, "statr open video+++++++"

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/gemini/play/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_2

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/VideoView;->path:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/gemini/play/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_2

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 278
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/gemini/play/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 279
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/gemini/play/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    .line 282
    const/4 v1, -0x1

    iput v1, p0, Lcom/gemini/play/VideoView;->mDuration:I

    .line 283
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/gemini/play/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 284
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/gemini/play/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 285
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/gemini/play/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 286
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/gemini/play/VideoView;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 287
    const/4 v1, 0x0

    iput v1, p0, Lcom/gemini/play/VideoView;->mCurrentBufferPercentage:I

    .line 288
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/gemini/play/VideoView;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 290
    :goto_2
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/gemini/play/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 293
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 294
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 296
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 298
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v2, p0, Lcom/gemini/play/VideoView;->setLoop:Z

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 358
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcom/gemini/play/VideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 272
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    goto/16 :goto_1

    .line 289
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/gemini/play/VideoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/gemini/play/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 362
    :catch_1
    move-exception v0

    .line 363
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/gemini/play/VideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 715
    :goto_0
    return-void

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 842
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x1

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 834
    iget v0, p0, Lcom/gemini/play/VideoView;->mCurrentBufferPercentage:I

    .line 836
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 795
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition2()J
    .locals 4

    .prologue
    .line 799
    iget v0, p0, Lcom/gemini/play/VideoView;->playing_time:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 781
    iget v0, p0, Lcom/gemini/play/VideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 782
    iget v0, p0, Lcom/gemini/play/VideoView;->mDuration:I

    .line 788
    :goto_0
    return v0

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/gemini/play/VideoView;->mDuration:I

    .line 785
    iget v0, p0, Lcom/gemini/play/VideoView;->mDuration:I

    goto :goto_0

    .line 787
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/gemini/play/VideoView;->mDuration:I

    .line 788
    iget v0, p0, Lcom/gemini/play/VideoView;->mDuration:I

    goto :goto_0
.end method

.method public getSeekComplete()Z
    .locals 1

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->seekComplete:Z

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/gemini/play/VideoView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/gemini/play/VideoView;->mVideoWidth:I

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPause:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 819
    :try_start_0
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 824
    :goto_0
    return v0

    .line 820
    :catch_0
    move-exception v0

    .line 824
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 678
    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x52

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_3

    .line 687
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_2

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->pause()V

    .line 691
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 696
    :goto_0
    const/4 v0, 0x1

    .line 706
    :goto_1
    return v0

    .line 693
    :cond_1
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->start()V

    .line 694
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 697
    :cond_2
    const/16 v0, 0x56

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 698
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 699
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->pause()V

    .line 700
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 706
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 702
    :cond_4
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->toggleMediaControlsVisiblity()V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 138
    iget v2, p0, Lcom/gemini/play/VideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lcom/gemini/play/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 139
    .local v1, "width":I
    iget v2, p0, Lcom/gemini/play/VideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lcom/gemini/play/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 154
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/gemini/play/VideoView;->setMeasuredDimension(II)V

    .line 155
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 662
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->toggleMediaControlsVisiblity()V

    .line 664
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 670
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->toggleMediaControlsVisiblity()V

    .line 672
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 741
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->mStartWhenPrepared:Z

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPause:Z

    .line 743
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 771
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->isStopTimeout:Z

    .line 772
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 763
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->isStopTimeout:Z

    .line 764
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 158
    move v0, p1

    .line 159
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 160
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 162
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 183
    :goto_0
    return v0

    .line 167
    :sswitch_0
    move v0, p1

    .line 168
    goto :goto_0

    .line 175
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    goto :goto_0

    .line 180
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "msec"    # I

    .prologue
    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 806
    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->seekComplete:Z

    .line 807
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 813
    :goto_0
    iput v1, p0, Lcom/gemini/play/VideoView;->playing_time:I

    .line 814
    return-void

    .line 811
    :cond_0
    iput p1, p0, Lcom/gemini/play/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "loop"    # Z

    .prologue
    .line 776
    iput-boolean p1, p0, Lcom/gemini/play/VideoView;->setLoop:Z

    .line 777
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 372
    :cond_0
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 373
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->attachMediaController()V

    .line 374
    return-void
.end method

.method public setMySizeChangeLinstener(Lcom/gemini/play/VideoView$MySizeChangeLinstener;)V
    .locals 0
    .param p1, "l"    # Lcom/gemini/play/VideoView$MySizeChangeLinstener;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mMyChangeLinstener:Lcom/gemini/play/VideoView$MySizeChangeLinstener;

    .line 115
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 581
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 594
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 598
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 599
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 570
    return-void
.end method

.method public setSurface(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->needChanged:Z

    .line 604
    return-void
.end method

.method public setSurfaceResetVideo()V
    .locals 1

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->openVideo()V

    .line 609
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 610
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/gemini/play/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 221
    return-void
.end method

.method public setVideoScale(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 104
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 105
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    invoke-virtual {p0, v0}, Lcom/gemini/play/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 233
    iput v0, p0, Lcom/gemini/play/VideoView;->playing_time:I

    .line 234
    iput-object p1, p0, Lcom/gemini/play/VideoView;->mUri:Landroid/net/Uri;

    .line 235
    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->mStartWhenPrepared:Z

    .line 236
    iput v0, p0, Lcom/gemini/play/VideoView;->mSeekWhenPrepared:I

    .line 237
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->openVideo()V

    .line 238
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->requestLayout()V

    .line 239
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->invalidate()V

    .line 241
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "path1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/gemini/play/VideoView;->playing_time:I

    .line 225
    iput-object p1, p0, Lcom/gemini/play/VideoView;->path:Ljava/lang/String;

    .line 226
    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->mStartWhenPrepared:Z

    .line 227
    iput v0, p0, Lcom/gemini/play/VideoView;->mSeekWhenPrepared:I

    .line 228
    invoke-direct {p0}, Lcom/gemini/play/VideoView;->openVideo()V

    .line 229
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->requestLayout()V

    .line 230
    invoke-virtual {p0}, Lcom/gemini/play/VideoView;->invalidate()V

    .line 231
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 718
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/gemini/play/VideoView;->mIsPrepared:Z

    if-eqz v1, :cond_1

    .line 719
    iget-object v1, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 720
    iput-boolean v2, p0, Lcom/gemini/play/VideoView;->mStartWhenPrepared:Z

    .line 725
    :goto_0
    iput-boolean v2, p0, Lcom/gemini/play/VideoView;->mIsPause:Z

    .line 726
    iput-boolean v2, p0, Lcom/gemini/play/VideoView;->isStopTimeout:Z

    .line 728
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 729
    .local v0, "msg2":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 730
    iget-object v1, p0, Lcom/gemini/play/VideoView;->timehandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/gemini/play/VideoView;->timehandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/gemini/play/VideoView;->timehandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 733
    return-void

    .line 722
    .end local v0    # "msg2":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gemini/play/VideoView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 755
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->isStopTimeout:Z

    .line 756
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/VideoView;->playing_time:I

    .line 246
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 247
    iget-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/play/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 250
    :cond_0
    return-void
.end method

.method public v3_v2(Z)V
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    .line 859
    iput-boolean p1, p0, Lcom/gemini/play/VideoView;->v3orv2:Z

    .line 860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gemini/play/VideoView;->v3orv2:Z

    .line 892
    return-void
.end method
