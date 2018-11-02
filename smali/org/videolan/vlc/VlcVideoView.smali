.class public Lorg/videolan/vlc/VlcVideoView;
.super Landroid/view/TextureView;
.source "VlcVideoView.java"

# interfaces
.implements Lorg/videolan/vlc/listener/MediaPlayerControl;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lorg/videolan/vlc/listener/VideoSizeChange;


# instance fields
.field private isRotation:Z

.field private isStopTimeout:Z

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mirror:Z

.field private playing_time:I

.field private final tag:Ljava/lang/String;

.field private task:Ljava/lang/Runnable;

.field private timehandler:Landroid/os/Handler;

.field private videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/videolan/vlc/VlcVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/videolan/vlc/VlcVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-string v0, "VideoView"

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->tag:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->timehandler:Landroid/os/Handler;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->task:Ljava/lang/Runnable;

    .line 31
    iput v1, p0, Lorg/videolan/vlc/VlcVideoView;->playing_time:I

    .line 32
    iput-boolean v1, p0, Lorg/videolan/vlc/VlcVideoView;->isStopTimeout:Z

    .line 168
    iput-boolean v1, p0, Lorg/videolan/vlc/VlcVideoView;->mirror:Z

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/VlcVideoView;->isRotation:Z

    .line 44
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/VlcVideoView;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/videolan/vlc/VlcVideoView;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 26
    iget v0, p0, Lorg/videolan/vlc/VlcVideoView;->playing_time:I

    return v0
.end method

.method static synthetic access$002(Lorg/videolan/vlc/VlcVideoView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lorg/videolan/vlc/VlcVideoView;->playing_time:I

    return p1
.end method

.method static synthetic access$100(Lorg/videolan/vlc/VlcVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoView;->isStopTimeout:Z

    return v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/VlcVideoView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 26
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->timehandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/videolan/vlc/VlcVideoView;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 26
    iget v0, p0, Lorg/videolan/vlc/VlcVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$400(Lorg/videolan/vlc/VlcVideoView;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoView;

    .prologue
    .line 26
    iget v0, p0, Lorg/videolan/vlc/VlcVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$500(Lorg/videolan/vlc/VlcVideoView;II)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/VlcVideoView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/VlcVideoView;->adjustAspectRatio(II)V

    return-void
.end method

.method private adjustAspectRatio(II)V
    .locals 18
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .prologue
    .line 264
    mul-int v13, p1, p2

    if-nez v13, :cond_0

    .line 345
    :goto_0
    return-void

    .line 267
    :cond_0
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    .line 268
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/videolan/vlc/VlcVideoView;->isRotation:Z

    .line 272
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/VlcVideoView;->getWidth()I

    move-result v10

    .line 273
    .local v10, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/VlcVideoView;->getHeight()I

    move-result v7

    .line 274
    .local v7, "viewHeight":I
    int-to-double v14, v10

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v8, v14, v16

    .line 275
    .local v8, "videoRatio":D
    move/from16 v0, p1

    int-to-double v14, v0

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v2, v14, v16

    .line 277
    .local v2, "aspectRatio":D
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 279
    cmpl-double v13, v8, v2

    if-lez v13, :cond_2

    .line 282
    move v5, v10

    .line 283
    .local v5, "newWidth":I
    move v4, v7

    .line 331
    .local v4, "newHeight":I
    :goto_2
    sub-int v13, v10, v5

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v11, v13, v14

    .line 332
    .local v11, "xoff":F
    sub-int v13, v7, v4

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v12, v13, v14

    .line 333
    .local v12, "yoff":F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 334
    .local v6, "txform":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/videolan/vlc/VlcVideoView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    .line 337
    int-to-float v13, v5

    int-to-float v14, v10

    div-float/2addr v13, v14

    int-to-float v14, v4

    int-to-float v15, v7

    div-float/2addr v14, v15

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 340
    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 341
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/videolan/vlc/VlcVideoView;->setTransform(Landroid/graphics/Matrix;)V

    .line 342
    const-string v13, "VideoView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "video="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " view="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " newView="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " off="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    .end local v2    # "aspectRatio":D
    .end local v4    # "newHeight":I
    .end local v5    # "newWidth":I
    .end local v6    # "txform":Landroid/graphics/Matrix;
    .end local v7    # "viewHeight":I
    .end local v8    # "videoRatio":D
    .end local v10    # "viewWidth":I
    .end local v11    # "xoff":F
    .end local v12    # "yoff":F
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/videolan/vlc/VlcVideoView;->isRotation:Z

    goto/16 :goto_1

    .line 287
    .restart local v2    # "aspectRatio":D
    .restart local v7    # "viewHeight":I
    .restart local v8    # "videoRatio":D
    .restart local v10    # "viewWidth":I
    :cond_2
    move v5, v10

    .line 288
    .restart local v5    # "newWidth":I
    move v4, v7

    .restart local v4    # "newHeight":I
    goto/16 :goto_2

    .line 292
    .end local v4    # "newHeight":I
    .end local v5    # "newWidth":I
    :cond_3
    int-to-double v14, v7

    mul-double/2addr v14, v2

    double-to-int v5, v14

    .line 293
    .restart local v5    # "newWidth":I
    move v4, v7

    .restart local v4    # "newHeight":I
    goto/16 :goto_2
.end method


# virtual methods
.method public canControl()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->canControl()Z

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPosition2()J
    .locals 4

    .prologue
    .line 144
    iget v0, p0, Lorg/videolan/vlc/VlcVideoView;->playing_time:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMirror()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoView;->mirror:Z

    return v0
.end method

.method public getPlaybackSpeed()F
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->getPlaybackSpeed()F

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    new-instance v0, Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-direct {v0, p1}, Lorg/videolan/vlc/VlcVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    .line 72
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/VlcVideoPlayer;->setVideoSizeChange(Lorg/videolan/vlc/listener/VideoSizeChange;)V

    .line 73
    invoke-virtual {p0, p0}, Lorg/videolan/vlc/VlcVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 76
    new-instance v0, Lorg/videolan/vlc/VlcVideoView$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/VlcVideoView$1;-><init>(Lorg/videolan/vlc/VlcVideoView;)V

    iput-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->task:Ljava/lang/Runnable;

    .line 89
    return-void
.end method

.method public isLoop()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->isLoop()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPrepare()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->isPrepare()Z

    move-result v0

    return v0
.end method

.method public isRotation()Z
    .locals 1

    .prologue
    .line 260
    iget-boolean v0, p0, Lorg/videolan/vlc/VlcVideoView;->isRotation:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 235
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 236
    const-string v0, "VideoView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/VlcVideoView;->setKeepScreenOn(Z)V

    .line 241
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/VlcVideoPlayer;->onAttachedToWindow(Z)V

    goto :goto_0
.end method

.method public onDestory()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->onDestory()V

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/videolan/vlc/VlcVideoView;->playing_time:I

    .line 67
    const-string v0, "VideoView"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 248
    const-string v0, "VideoView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lorg/videolan/vlc/VlcVideoView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/VlcVideoView;->setKeepScreenOn(Z)V

    .line 253
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, v2}, Lorg/videolan/vlc/VlcVideoPlayer;->onAttachedToWindow(Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 349
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    .line 350
    if-eqz p1, :cond_0

    .line 351
    iget v0, p0, Lorg/videolan/vlc/VlcVideoView;->mVideoWidth:I

    iget v1, p0, Lorg/videolan/vlc/VlcVideoView;->mVideoHeight:I

    invoke-direct {p0, v0, v1}, Lorg/videolan/vlc/VlcVideoView;->adjustAspectRatio(II)V

    .line 353
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->onStop()V

    .line 61
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 205
    const-string v0, "VideoView"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/VlcVideoPlayer;->setSurface(Landroid/graphics/SurfaceTexture;)V

    .line 207
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 222
    const-string v0, "VideoView"

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->onSurfaceTextureDestroyed()V

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 211
    const-string v0, "VideoView"

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    new-instance v0, Lorg/videolan/vlc/VlcVideoView$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/VlcVideoView$2;-><init>(Lorg/videolan/vlc/VlcVideoView;)V

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/VlcVideoView;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 230
    return-void
.end method

.method public onVideoSizeChanged(IIIIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "visibleWidth"    # I
    .param p4, "visibleHeight"    # I
    .param p5, "sarNum"    # I
    .param p6, "sarDen"    # I

    .prologue
    .line 359
    const-string v0, "VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged   video="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   sarNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    mul-int v0, p1, p2

    if-nez v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 363
    :cond_0
    iput p3, p0, Lorg/videolan/vlc/VlcVideoView;->mVideoWidth:I

    .line 364
    iput p4, p0, Lorg/videolan/vlc/VlcVideoView;->mVideoHeight:I

    .line 365
    new-instance v0, Lorg/videolan/vlc/VlcVideoView$3;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/VlcVideoView$3;-><init>(Lorg/videolan/vlc/VlcVideoView;)V

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/VlcVideoView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->pause()V

    .line 131
    return-void
.end method

.method public saveState()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->saveState()V

    .line 121
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 149
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, p1, p2}, Lorg/videolan/vlc/VlcVideoPlayer;->seekTo(J)V

    .line 150
    return-void
.end method

.method public setLoop(Z)V
    .locals 1
    .param p1, "isLoop"    # Z

    .prologue
    .line 194
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/VlcVideoPlayer;->setLoop(Z)V

    .line 195
    return-void
.end method

.method public setMedia(Lorg/videolan/libvlc/Media;)V
    .locals 1
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/VlcVideoPlayer;->setMedia(Lorg/videolan/libvlc/Media;)V

    .line 97
    return-void
.end method

.method public setMediaListenerEvent(Lorg/videolan/vlc/listener/MediaListenerEvent;)V
    .locals 1
    .param p1, "mediaListenerEvent"    # Lorg/videolan/vlc/listener/MediaListenerEvent;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/VlcVideoPlayer;->setMediaListenerEvent(Lorg/videolan/vlc/listener/MediaListenerEvent;)V

    .line 52
    return-void
.end method

.method public setMediaPlayer(Lorg/videolan/libvlc/LibVLC;)V
    .locals 1
    .param p1, "libVLC"    # Lorg/videolan/libvlc/LibVLC;

    .prologue
    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/VlcVideoPlayer;->setMediaPlayer(Lorg/videolan/libvlc/LibVLC;)V

    .line 93
    return-void
.end method

.method public setMirror(Z)V
    .locals 1
    .param p1, "mirror"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lorg/videolan/vlc/VlcVideoView;->mirror:Z

    .line 161
    if-eqz p1, :cond_0

    .line 162
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/VlcVideoView;->setScaleX(F)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/VlcVideoView;->setScaleX(F)V

    goto :goto_0
.end method

.method public setPlaybackSpeedMedia(F)Z
    .locals 1
    .param p1, "speed"    # F

    .prologue
    .line 183
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/VlcVideoPlayer;->setPlaybackSpeedMedia(F)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0}, Lorg/videolan/vlc/VlcVideoPlayer;->start()V

    .line 126
    return-void
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lorg/videolan/vlc/VlcVideoView;->playing_time:I

    .line 109
    iput-boolean v0, p0, Lorg/videolan/vlc/VlcVideoView;->isStopTimeout:Z

    .line 110
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->timehandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/videolan/vlc/VlcVideoView;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    iget-object v0, p0, Lorg/videolan/vlc/VlcVideoView;->videoMediaLogic:Lorg/videolan/vlc/VlcVideoPlayer;

    invoke-virtual {v0, p1}, Lorg/videolan/vlc/VlcVideoPlayer;->startPlay(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public stopTimeout()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/VlcVideoView;->isStopTimeout:Z

    .line 117
    return-void
.end method
