.class public Lorg/succlz123/okplayer/view/OkVideoView;
.super Landroid/widget/FrameLayout;
.source "OkVideoView.java"

# interfaces
.implements Lorg/succlz123/okplayer/listener/OkPlayerListener;
.implements Lorg/succlz123/okplayer/listener/CaptionListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;
    }
.end annotation


# instance fields
.field private audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

.field private mediaController:Landroid/widget/MediaController;

.field private okPlayer:Lorg/succlz123/okplayer/OkPlayer;

.field private playerPosition:J

.field private rendererContentType:I

.field private surfaceView:Landroid/view/SurfaceView;

.field private uri:Landroid/net/Uri;

.field private videoFrame:Lcom/google/android/exoplayer/AspectRatioFrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->rendererContentType:I

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/succlz123/okplayer/view/OkVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->rendererContentType:I

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/succlz123/okplayer/view/OkVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->rendererContentType:I

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/succlz123/okplayer/view/OkVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/4 v0, 0x3

    iput v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->rendererContentType:I

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/succlz123/okplayer/view/OkVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lorg/succlz123/okplayer/view/OkVideoView;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Lorg/succlz123/okplayer/view/OkVideoView;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->mediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method private initExoPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;)V

    iput-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 112
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->register()Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 113
    new-instance v0, Lorg/succlz123/okplayer/OkPlayer;

    invoke-direct {v0, v2}, Lorg/succlz123/okplayer/OkPlayer;-><init>(Lorg/succlz123/okplayer/builder/RendererBuilder;)V

    iput-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    .line 115
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0, p0}, Lorg/succlz123/okplayer/OkPlayer;->addListener(Lorg/succlz123/okplayer/listener/OkPlayerListener;)V

    .line 116
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0, v2}, Lorg/succlz123/okplayer/OkPlayer;->setId3MetadataListener(Lorg/succlz123/okplayer/listener/Id3MetadataListener;)V

    .line 118
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    iget-object v1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/succlz123/okplayer/OkPlayer;->setSurface(Landroid/view/Surface;)V

    .line 119
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 120
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    sget v0, Lorg/succlz123/okplayer/R$layout;->ok_video_view:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    sget v0, Lorg/succlz123/okplayer/R$id;->video_frame:I

    invoke-virtual {p0, v0}, Lorg/succlz123/okplayer/view/OkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    iput-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->videoFrame:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    .line 100
    sget v0, Lorg/succlz123/okplayer/R$id;->surface_view:I

    invoke-virtual {p0, v0}, Lorg/succlz123/okplayer/view/OkVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->surfaceView:Landroid/view/SurfaceView;

    .line 102
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->initExoPlayer()V

    .line 105
    :cond_0
    return-void
.end method

.method private readAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 126
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    sget-object v2, Lorg/succlz123/okplayer/R$styleable;->OkExoPlayerVideoView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 131
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_0

    .line 135
    sget v2, Lorg/succlz123/okplayer/R$styleable;->OkExoPlayerVideoView_ControlsEnabled:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 136
    .local v0, "enableDefaultControls":Z
    invoke-virtual {p0, v0}, Lorg/succlz123/okplayer/view/OkVideoView;->setDefaultControlsEnabled(Z)V

    .line 138
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private setup(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lorg/succlz123/okplayer/view/OkVideoView;->initView(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/succlz123/okplayer/view/OkVideoView;->readAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lorg/succlz123/okplayer/listener/OkPlayerListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/succlz123/okplayer/listener/OkPlayerListener;

    .prologue
    .line 228
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0, p1}, Lorg/succlz123/okplayer/OkPlayer;->addListener(Lorg/succlz123/okplayer/listener/OkPlayerListener;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 402
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/OkPlayer;->getBufferedPercentage()I

    move-result v0

    goto :goto_0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_0

    .line 296
    const-wide/16 v0, 0x0

    .line 298
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/OkPlayer;->getBufferedPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_0

    .line 282
    const-wide/16 v0, 0x0

    .line 284
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/OkPlayer;->getCurrentPosition()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_0

    .line 275
    const-wide/16 v0, 0x0

    .line 277
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/OkPlayer;->getDuration()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/OkPlayer;->getPlayWhenReady()Z

    move-result v0

    goto :goto_0
.end method

.method public getPlaybackState()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/OkPlayer;->getPlaybackState()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 77
    return-void
.end method

.method public onAudioCapabilitiesChanged(Lcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 3
    .param p1, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .prologue
    .line 362
    iget-object v2, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v2, :cond_0

    .line 370
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v2, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v2}, Lorg/succlz123/okplayer/OkPlayer;->getBackgrounded()Z

    move-result v0

    .line 366
    .local v0, "backgrounded":Z
    iget-object v2, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v2}, Lorg/succlz123/okplayer/OkPlayer;->getPlayWhenReady()Z

    move-result v1

    .line 369
    .local v1, "playWhenReady":Z
    iget-object v2, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v2, v0}, Lorg/succlz123/okplayer/OkPlayer;->setBackgrounded(Z)V

    goto :goto_0
.end method

.method public onCues(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/text/Cue;>;"
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->release()V

    .line 200
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 82
    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->release()V

    .line 83
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 319
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent()V
    .locals 0

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->release()V

    .line 184
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->pause()V

    .line 196
    return-void
.end method

.method public onResume(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 187
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0, p1}, Lorg/succlz123/okplayer/view/OkVideoView;->setVideoUri(Landroid/net/Uri;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/succlz123/okplayer/OkPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public onStateChanged(ZI)V
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 314
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 325
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/succlz123/okplayer/OkPlayer;->setPlayWhenReady(Z)V

    .line 209
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/OkPlayer;->release()V

    .line 217
    iput-object v2, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    .line 219
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->playerPosition:J

    .line 221
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->unregister()V

    .line 223
    iput-object v2, p0, Lorg/succlz123/okplayer/view/OkVideoView;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 225
    :cond_1
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    .line 288
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/succlz123/okplayer/OkPlayer;->seekTo(J)V

    goto :goto_0
.end method

.method public setDefaultControlsEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    new-instance v1, Landroid/widget/MediaController;

    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->mediaController:Landroid/widget/MediaController;

    .line 144
    iget-object v1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->mediaController:Landroid/widget/MediaController;

    iget-object v2, p0, Lorg/succlz123/okplayer/view/OkVideoView;->videoFrame:Lcom/google/android/exoplayer/AspectRatioFrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 145
    iget-object v1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->mediaController:Landroid/widget/MediaController;

    iget-object v2, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v2}, Lorg/succlz123/okplayer/OkPlayer;->getPlayerControl()Lcom/google/android/exoplayer/util/PlayerControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 146
    iget-object v1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->mediaController:Landroid/widget/MediaController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 149
    :cond_0
    new-instance v0, Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;

    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;-><init>(Lorg/succlz123/okplayer/view/OkVideoView;Landroid/content/Context;)V

    .line 150
    .local v0, "listener":Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;
    if-eqz p1, :cond_1

    .end local v0    # "listener":Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;
    :goto_0
    invoke-virtual {p0, v0}, Lorg/succlz123/okplayer/view/OkVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    return-void

    .line 150
    .restart local v0    # "listener":Lorg/succlz123/okplayer/view/OkVideoView$CustomTouchListener;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0, p1}, Lorg/succlz123/okplayer/OkPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public setRendererContentType(I)V
    .locals 0
    .param p1, "rendererContentType"    # I

    .prologue
    .line 235
    iput p1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->rendererContentType:I

    .line 236
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "videoUri"    # Landroid/net/Uri;

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/succlz123/okplayer/view/OkVideoView;->setVideoUri(Landroid/net/Uri;Z)V

    .line 162
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "defaultPlay"    # Z

    .prologue
    .line 165
    iput-object p1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->uri:Landroid/net/Uri;

    .line 167
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v0, :cond_1

    .line 172
    invoke-direct {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->initExoPlayer()V

    .line 175
    :cond_1
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {p0}, Lorg/succlz123/okplayer/view/OkVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/succlz123/okplayer/view/OkVideoView;->uri:Landroid/net/Uri;

    iget v3, p0, Lorg/succlz123/okplayer/view/OkVideoView;->rendererContentType:I

    invoke-static {v1, v2, v3}, Lorg/succlz123/okplayer/utils/OkPlayerUtils;->getRendererBuilder(Landroid/content/Context;Landroid/net/Uri;I)Lorg/succlz123/okplayer/builder/RendererBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/succlz123/okplayer/OkPlayer;->replaceRenderBuilder(Lorg/succlz123/okplayer/builder/RendererBuilder;)V

    .line 176
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/OkPlayer;->prepare()V

    .line 177
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/succlz123/okplayer/OkPlayer;->pushSurface(Z)V

    .line 178
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/succlz123/okplayer/OkPlayer;->seekTo(J)V

    .line 179
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0, p2}, Lorg/succlz123/okplayer/OkPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 340
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 332
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/succlz123/okplayer/OkPlayer;->setSurface(Landroid/view/Surface;)V

    .line 335
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 344
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0}, Lorg/succlz123/okplayer/OkPlayer;->blockingClearSurface()V

    .line 347
    :cond_0
    return-void
.end method

.method public togglePlayback()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    if-nez v1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v1}, Lorg/succlz123/okplayer/OkPlayer;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 264
    iget-object v1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v1}, Lorg/succlz123/okplayer/OkPlayer;->getPlayWhenReady()Z

    move-result v0

    .line 265
    .local v0, "playWhenReady":Z
    if-eqz v0, :cond_2

    .line 266
    iget-object v1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/succlz123/okplayer/OkPlayer;->setPlayWhenReady(Z)V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v1, p0, Lorg/succlz123/okplayer/view/OkVideoView;->okPlayer:Lorg/succlz123/okplayer/OkPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/succlz123/okplayer/OkPlayer;->setPlayWhenReady(Z)V

    goto :goto_0
.end method
