.class public Lorg/videolan/libvlc/MediaPlayer;
.super Lorg/videolan/libvlc/VLCObject;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaPlayer$Equalizer;,
        Lorg/videolan/libvlc/MediaPlayer$TrackDescription;,
        Lorg/videolan/libvlc/MediaPlayer$Chapter;,
        Lorg/videolan/libvlc/MediaPlayer$Title;,
        Lorg/videolan/libvlc/MediaPlayer$Navigate;,
        Lorg/videolan/libvlc/MediaPlayer$Position;,
        Lorg/videolan/libvlc/MediaPlayer$EventListener;,
        Lorg/videolan/libvlc/MediaPlayer$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject",
        "<",
        "Lorg/videolan/libvlc/MediaPlayer$Event;",
        ">;"
    }
.end annotation


# instance fields
.field private mAudioOutput:Ljava/lang/String;

.field private mAudioOutputDevice:Ljava/lang/String;

.field private mAudioReset:Z

.field private mMedia:Lorg/videolan/libvlc/Media;

.field private mPlayRequested:Z

.field private mPlaying:Z

.field private mVoutCount:I

.field private final mWindow:Lorg/videolan/libvlc/AWindow;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;)V
    .locals 2
    .param p1, "libVLC"    # Lorg/videolan/libvlc/LibVLC;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 376
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 334
    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    .line 335
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    .line 336
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    .line 337
    iput v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    .line 338
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    .line 339
    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 340
    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 342
    new-instance v0, Lorg/videolan/libvlc/AWindow;

    new-instance v1, Lorg/videolan/libvlc/MediaPlayer$1;

    invoke-direct {v1, p0}, Lorg/videolan/libvlc/MediaPlayer$1;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/AWindow;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceCallback;)V

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    .line 377
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->getNativeHandler()Lorg/videolan/libvlc/AWindowNativeHandler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeNewFromLibVlc(Lorg/videolan/libvlc/LibVLC;Lorg/videolan/libvlc/AWindowNativeHandler;)V

    .line 378
    return-void
.end method

.method public constructor <init>(Lorg/videolan/libvlc/Media;)V
    .locals 2
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 385
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 334
    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    .line 335
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    .line 336
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    .line 337
    iput v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    .line 338
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    .line 339
    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 340
    iput-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 342
    new-instance v0, Lorg/videolan/libvlc/AWindow;

    new-instance v1, Lorg/videolan/libvlc/MediaPlayer$1;

    invoke-direct {v1, p0}, Lorg/videolan/libvlc/MediaPlayer$1;-><init>(Lorg/videolan/libvlc/MediaPlayer;)V

    invoke-direct {v0, v1}, Lorg/videolan/libvlc/AWindow;-><init>(Lorg/videolan/libvlc/AWindow$SurfaceCallback;)V

    iput-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    .line 386
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media is null or released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_1
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    .line 389
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->retain()Z

    .line 390
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    iget-object v1, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-virtual {v1}, Lorg/videolan/libvlc/AWindow;->getNativeHandler()Lorg/videolan/libvlc/AWindowNativeHandler;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->nativeNewFromMedia(Lorg/videolan/libvlc/Media;Lorg/videolan/libvlc/AWindowNativeHandler;)V

    .line 391
    return-void
.end method

.method static synthetic access$200(Lorg/videolan/libvlc/MediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/MediaPlayer;

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    return v0
.end method

.method static synthetic access$300(Lorg/videolan/libvlc/MediaPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/MediaPlayer;

    .prologue
    .line 30
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    return v0
.end method

.method static synthetic access$400(Lorg/videolan/libvlc/MediaPlayer;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/MediaPlayer;

    .prologue
    .line 30
    iget v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    return v0
.end method

.method private static createChapterFromNative(JJLjava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$Chapter;
    .locals 8
    .param p0, "timeOffset"    # J
    .param p2, "duration"    # J
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v1, Lorg/videolan/libvlc/MediaPlayer$Chapter;

    const/4 v7, 0x0

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lorg/videolan/libvlc/MediaPlayer$Chapter;-><init>(JJLjava/lang/String;Lorg/videolan/libvlc/MediaPlayer$1;)V

    return-object v1
.end method

.method private static createTitleFromNative(JLjava/lang/String;I)Lorg/videolan/libvlc/MediaPlayer$Title;
    .locals 2
    .param p0, "duration"    # J
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 150
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Title;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer$Title;-><init>(JLjava/lang/String;I)V

    return-object v0
.end method

.method private static createTrackDescriptionFromNative(ILjava/lang/String;)Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 2
    .param p0, "id"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;-><init>(ILjava/lang/String;Lorg/videolan/libvlc/MediaPlayer$1;)V

    return-object v0
.end method

.method private native nativeAddSlave(ILjava/lang/String;Z)Z
.end method

.method private native nativeGetAudioDelay()J
.end method

.method private native nativeGetAudioTrack()I
.end method

.method private native nativeGetAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetAudioTracksCount()I
.end method

.method private native nativeGetChapters(I)[Lorg/videolan/libvlc/MediaPlayer$Chapter;
.end method

.method private native nativeGetSpuDelay()J
.end method

.method private native nativeGetSpuTrack()I
.end method

.method private native nativeGetSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetSpuTracksCount()I
.end method

.method private native nativeGetTitles()[Lorg/videolan/libvlc/MediaPlayer$Title;
.end method

.method private native nativeGetVideoTrack()I
.end method

.method private native nativeGetVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
.end method

.method private native nativeGetVideoTracksCount()I
.end method

.method private native nativeNewFromLibVlc(Lorg/videolan/libvlc/LibVLC;Lorg/videolan/libvlc/AWindowNativeHandler;)V
.end method

.method private native nativeNewFromMedia(Lorg/videolan/libvlc/Media;Lorg/videolan/libvlc/AWindowNativeHandler;)V
.end method

.method private native nativePlay()V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeSetAudioDelay(J)Z
.end method

.method private native nativeSetAudioOutput(Ljava/lang/String;)Z
.end method

.method private native nativeSetAudioOutputDevice(Ljava/lang/String;)Z
.end method

.method private native nativeSetAudioTrack(I)Z
.end method

.method private native nativeSetEqualizer(Lorg/videolan/libvlc/MediaPlayer$Equalizer;)Z
.end method

.method private native nativeSetMedia(Lorg/videolan/libvlc/Media;)V
.end method

.method private native nativeSetSpuDelay(J)Z
.end method

.method private native nativeSetSpuTrack(I)Z
.end method

.method private native nativeSetVideoTitleDisplay(II)V
.end method

.method private native nativeSetVideoTrack(I)Z
.end method

.method private native nativeStop()V
.end method


# virtual methods
.method public addSlave(ILandroid/net/Uri;Z)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "select"    # Z

    .prologue
    .line 730
    invoke-static {p2}, Lorg/videolan/libvlc/Media;->locationFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/videolan/libvlc/MediaPlayer;->nativeAddSlave(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public addSlave(ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "select"    # Z

    .prologue
    .line 741
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/videolan/libvlc/MediaPlayer;->addSlave(ILandroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public getAudioDelay()J
    .locals 2

    .prologue
    .line 633
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioTrack()I
    .locals 1

    .prologue
    .line 615
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioTrack()I

    move-result v0

    return v0
.end method

.method public getAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 1

    .prologue
    .line 606
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTracksCount()I
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetAudioTracksCount()I

    move-result v0

    return v0
.end method

.method public native getChapter()I
.end method

.method public getChapters(I)[Lorg/videolan/libvlc/MediaPlayer$Chapter;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetChapters(I)[Lorg/videolan/libvlc/MediaPlayer$Chapter;

    move-result-object v0

    return-object v0
.end method

.method public native getLength()J
.end method

.method public declared-synchronized getMedia()Lorg/videolan/libvlc/Media;
    .locals 1

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->retain()Z

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native getPlayerState()I
.end method

.method public native getPosition()F
.end method

.method public native getRate()F
.end method

.method public getSpuDelay()J
    .locals 2

    .prologue
    .line 684
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpuTrack()I
    .locals 1

    .prologue
    .line 666
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuTrack()I

    move-result v0

    return v0
.end method

.method public getSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 1

    .prologue
    .line 657
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object v0

    return-object v0
.end method

.method public getSpuTracksCount()I
    .locals 1

    .prologue
    .line 650
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetSpuTracksCount()I

    move-result v0

    return v0
.end method

.method public native getTime()J
.end method

.method public native getTitle()I
.end method

.method public getTitles()[Lorg/videolan/libvlc/MediaPlayer$Title;
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetTitles()[Lorg/videolan/libvlc/MediaPlayer$Title;

    move-result-object v0

    return-object v0
.end method

.method public getVLCVout()Lorg/videolan/libvlc/IVLCVout;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    return-object v0
.end method

.method public getVideoTrack()I
    .locals 1

    .prologue
    .line 550
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetVideoTrack()I

    move-result v0

    return v0
.end method

.method public getVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    .locals 1

    .prologue
    .line 541
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTracksCount()I
    .locals 1

    .prologue
    .line 534
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeGetVideoTracksCount()I

    move-result v0

    return v0
.end method

.method public native getVolume()I
.end method

.method public native isPlaying()Z
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method public native isSeekable()Z
.end method

.method public native navigate(I)V
.end method

.method public native nextChapter()I
.end method

.method protected declared-synchronized onEventNative(IJF)Lorg/videolan/libvlc/MediaPlayer$Event;
    .locals 2
    .param p1, "eventType"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # F

    .prologue
    .line 832
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 859
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 837
    :pswitch_1
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    .line 838
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 841
    :pswitch_2
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v0, p1, p4}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 844
    :pswitch_3
    :try_start_1
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v0, p1}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(I)V

    goto :goto_0

    .line 846
    :pswitch_4
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V

    goto :goto_0

    .line 848
    :pswitch_5
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v0, p1, p4}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IF)V

    goto :goto_0

    .line 850
    :pswitch_6
    long-to-int v0, p2

    iput v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mVoutCount:I

    .line 851
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 852
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V

    goto :goto_0

    .line 857
    :pswitch_7
    new-instance v0, Lorg/videolan/libvlc/MediaPlayer$Event;

    invoke-direct {v0, p1, p2, p3}, Lorg/videolan/libvlc/MediaPlayer$Event;-><init>(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method protected bridge synthetic onEventNative(IJF)Lorg/videolan/libvlc/VLCEvent;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/MediaPlayer;->onEventNative(IJF)Lorg/videolan/libvlc/MediaPlayer$Event;

    move-result-object v0

    return-object v0
.end method

.method protected onReleaseNative()V
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    .line 866
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeRelease()V

    .line 867
    return-void
.end method

.method public native pause()V
.end method

.method public play()V
    .locals 1

    .prologue
    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    if-nez v0, :cond_3

    .line 439
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutput(Ljava/lang/String;)Z

    .line 442
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutputDevice(Ljava/lang/String;)Z

    .line 444
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    .line 446
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    .line 447
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->areSurfacesWaiting()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    monitor-exit p0

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    .line 451
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativePlay()V

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public native previousChapter()I
.end method

.method public setAudioDelay(J)Z
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 643
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioDelay(J)Z

    move-result v0

    return v0
.end method

.method public setAudioOutput(Ljava/lang/String;)Z
    .locals 2
    .param p1, "aout"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutput(Ljava/lang/String;)Z

    move-result v0

    .line 487
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 488
    monitor-enter p0

    .line 489
    :try_start_0
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutput:Ljava/lang/String;

    .line 490
    monitor-exit p0

    .line 492
    :cond_0
    return v0

    .line 490
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAudioOutputDevice(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioOutputDevice(Ljava/lang/String;)Z

    move-result v0

    .line 503
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 504
    monitor-enter p0

    .line 505
    :try_start_0
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioOutputDevice:Ljava/lang/String;

    .line 506
    monitor-exit p0

    .line 508
    :cond_0
    return v0

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAudioTrack(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetAudioTrack(I)Z

    move-result v0

    return v0
.end method

.method public native setChapter(I)V
.end method

.method public setEqualizer(Lorg/videolan/libvlc/MediaPlayer$Equalizer;)Z
    .locals 1
    .param p1, "equalizer"    # Lorg/videolan/libvlc/MediaPlayer$Equalizer;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetEqualizer(Lorg/videolan/libvlc/MediaPlayer$Equalizer;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setEventListener(Lorg/videolan/libvlc/MediaPlayer$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/videolan/libvlc/MediaPlayer$EventListener;

    .prologue
    .line 827
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    monitor-exit p0

    return-void

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMedia(Lorg/videolan/libvlc/Media;)V
    .locals 2
    .param p1, "media"    # Lorg/videolan/libvlc/Media;

    .prologue
    .line 406
    if-eqz p1, :cond_1

    .line 407
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Media is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->setDefaultMediaPlayerOptions()V

    .line 411
    :cond_1
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetMedia(Lorg/videolan/libvlc/Media;)V

    .line 412
    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->release()V

    .line 416
    :cond_2
    if-eqz p1, :cond_3

    .line 417
    invoke-virtual {p1}, Lorg/videolan/libvlc/Media;->retain()Z

    .line 418
    :cond_3
    iput-object p1, p0, Lorg/videolan/libvlc/MediaPlayer;->mMedia:Lorg/videolan/libvlc/Media;

    .line 419
    monitor-exit p0

    .line 420
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native setPosition(F)V
.end method

.method public native setRate(F)V
.end method

.method public setSpuDelay(J)Z
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetSpuDelay(J)Z

    move-result v0

    return v0
.end method

.method public setSpuTrack(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetSpuTrack(I)Z

    move-result v0

    return v0
.end method

.method public native setTime(J)J
.end method

.method public native setTitle(I)V
.end method

.method public setVideoTitleDisplay(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 475
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetVideoTitleDisplay(II)V

    .line 476
    return-void
.end method

.method public setVideoTrack(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 560
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->areViewsAttached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mWindow:Lorg/videolan/libvlc/AWindow;

    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow;->areSurfacesWaiting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    :cond_0
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaPlayer;->nativeSetVideoTrack(I)Z

    move-result v0

    .line 563
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVideoTrackEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, -0x1

    .line 572
    if-nez p1, :cond_1

    .line 573
    invoke-virtual {p0, v7}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrack(I)Z

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTrack()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 575
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->getVideoTracks()[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;

    move-result-object v3

    .line 577
    .local v3, "tracks":[Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    if-eqz v3, :cond_0

    .line 578
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 579
    .local v2, "track":Lorg/videolan/libvlc/MediaPlayer$TrackDescription;
    iget v6, v2, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    if-eq v6, v7, :cond_2

    .line 580
    iget v4, v2, Lorg/videolan/libvlc/MediaPlayer$TrackDescription;->id:I

    invoke-virtual {p0, v4}, Lorg/videolan/libvlc/MediaPlayer;->setVideoTrack(I)Z

    .line 583
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->isSeekable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 584
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaPlayer;->getTime()J

    move-result-wide v0

    .line 585
    .local v0, "time":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 586
    invoke-virtual {p0, v0, v1}, Lorg/videolan/libvlc/MediaPlayer;->setTime(J)J

    goto :goto_0

    .line 578
    .end local v0    # "time":J
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public native setVolume(I)I
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 460
    monitor-enter p0

    .line 461
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlayRequested:Z

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mPlaying:Z

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaPlayer;->mAudioReset:Z

    .line 464
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaPlayer;->nativeStop()V

    .line 466
    return-void

    .line 464
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
