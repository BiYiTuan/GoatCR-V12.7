.class public Lorg/succlz123/okplayer/OkPlayer;
.super Ljava/lang/Object;
.source "OkPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer/ExoPlayer$Listener;
.implements Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;
.implements Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/chunk/ChunkSampleSource$EventListener;
.implements Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
.implements Lcom/google/android/exoplayer/drm/StreamingDrmSessionManager$EventListener;
.implements Lcom/google/android/exoplayer/util/DebugTextViewHelper$Provider;


# static fields
.field private static final RENDERER_BUILDING_STATE_BUILDING:I = 0x2

.field private static final RENDERER_BUILDING_STATE_BUILT:I = 0x3

.field private static final RENDERER_BUILDING_STATE_IDLE:I = 0x1

.field public static final RENDERER_COUNT:I = 0x4

.field public static final STATE_BUFFERING:I = 0x3

.field public static final STATE_ENDED:I = 0x5

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_PREPARING:I = 0x2

.field public static final STATE_READY:I = 0x4

.field public static final TRACK_DEFAULT:I = 0x0

.field public static final TRACK_DISABLED:I = -0x1

.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_METADATA:I = 0x3

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_VIDEO:I


# instance fields
.field private audioRenderer:Lcom/google/android/exoplayer/TrackRenderer;

.field private backgrounded:Z

.field private bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

.field private captionListener:Lorg/succlz123/okplayer/listener/CaptionListener;

.field private codecCounters:Lcom/google/android/exoplayer/CodecCounters;

.field private id3MetadataListener:Lorg/succlz123/okplayer/listener/Id3MetadataListener;

.field private infoListener:Lorg/succlz123/okplayer/listener/InfoListener;

.field private internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

.field private lastReportedPlayWhenReady:Z

.field private lastReportedPlaybackState:I

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/succlz123/okplayer/listener/OkPlayerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;

.field private final player:Lcom/google/android/exoplayer/ExoPlayer;

.field private final playerControl:Lcom/google/android/exoplayer/util/PlayerControl;

.field private position:J

.field private prepared:Z

.field private rendererBuilder:Lorg/succlz123/okplayer/builder/RendererBuilder;

.field private rendererBuildingState:I

.field private surface:Landroid/view/Surface;

.field private videoFormat:Lcom/google/android/exoplayer/chunk/Format;

.field private videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

.field private videoTrackToRestore:I


# direct methods
.method public constructor <init>(Lorg/succlz123/okplayer/builder/RendererBuilder;)V
    .locals 4
    .param p1, "rendererBuilder"    # Lorg/succlz123/okplayer/builder/RendererBuilder;

    .prologue
    const/4 v3, 0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/succlz123/okplayer/OkPlayer;->prepared:Z

    .line 126
    iput-object p1, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuilder:Lorg/succlz123/okplayer/builder/RendererBuilder;

    .line 127
    const/4 v0, 0x4

    const/16 v1, 0x5dc

    const/16 v2, 0x1388

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer$Factory;->newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    .line 128
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer/ExoPlayer;->addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V

    .line 129
    new-instance v0, Lcom/google/android/exoplayer/util/PlayerControl;

    iget-object v1, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/PlayerControl;-><init>(Lcom/google/android/exoplayer/ExoPlayer;)V

    iput-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->playerControl:Lcom/google/android/exoplayer/util/PlayerControl;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->mainHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 133
    iput v3, p0, Lorg/succlz123/okplayer/OkPlayer;->lastReportedPlaybackState:I

    .line 135
    iput v3, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuildingState:I

    .line 137
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer/ExoPlayer;->setSelectedTrack(II)V

    .line 138
    return-void
.end method

.method private maybeReportPlayerState()V
    .locals 5

    .prologue
    .line 404
    iget-object v4, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v4}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v2

    .line 405
    .local v2, "playWhenReady":Z
    invoke-virtual {p0}, Lorg/succlz123/okplayer/OkPlayer;->getPlaybackState()I

    move-result v3

    .line 407
    .local v3, "playbackState":I
    iget-boolean v4, p0, Lorg/succlz123/okplayer/OkPlayer;->lastReportedPlayWhenReady:Z

    if-ne v4, v2, :cond_0

    iget v4, p0, Lorg/succlz123/okplayer/OkPlayer;->lastReportedPlaybackState:I

    if-eq v4, v3, :cond_2

    .line 408
    :cond_0
    iget-object v4, p0, Lorg/succlz123/okplayer/OkPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/succlz123/okplayer/listener/OkPlayerListener;

    .line 409
    .local v1, "listener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    invoke-interface {v1, v2, v3}, Lorg/succlz123/okplayer/listener/OkPlayerListener;->onStateChanged(ZI)V

    goto :goto_0

    .line 412
    .end local v1    # "listener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    :cond_1
    iput-boolean v2, p0, Lorg/succlz123/okplayer/OkPlayer;->lastReportedPlayWhenReady:Z

    .line 413
    iput v3, p0, Lorg/succlz123/okplayer/OkPlayer;->lastReportedPlaybackState:I

    .line 415
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lorg/succlz123/okplayer/listener/OkPlayerListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/succlz123/okplayer/listener/OkPlayerListener;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public blockingClearSurface()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->surface:Landroid/view/Surface;

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/succlz123/okplayer/OkPlayer;->pushSurface(Z)V

    .line 229
    return-void
.end method

.method public getBackgrounded()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lorg/succlz123/okplayer/OkPlayer;->backgrounded:Z

    return v0
.end method

.method public getBandwidthMeter()Lcom/google/android/exoplayer/upstream/BandwidthMeter;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->bandwidthMeter:Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCaptionListener()Lorg/succlz123/okplayer/listener/CaptionListener;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->captionListener:Lorg/succlz123/okplayer/listener/CaptionListener;

    return-object v0
.end method

.method public getCodecCounters()Lcom/google/android/exoplayer/CodecCounters;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->codecCounters:Lcom/google/android/exoplayer/CodecCounters;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFormat()Lcom/google/android/exoplayer/chunk/Format;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->videoFormat:Lcom/google/android/exoplayer/chunk/Format;

    return-object v0
.end method

.method public getId3MetadataListener()Lorg/succlz123/okplayer/listener/Id3MetadataListener;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->id3MetadataListener:Lorg/succlz123/okplayer/listener/Id3MetadataListener;

    return-object v0
.end method

.method public getInfoListener()Lorg/succlz123/okplayer/listener/InfoListener;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->infoListener:Lorg/succlz123/okplayer/listener/InfoListener;

    return-object v0
.end method

.method public getInternalErrorListener()Lorg/succlz123/okplayer/listener/InternalErrorListener;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 422
    iget v2, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuildingState:I

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 425
    :cond_1
    iget-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer/ExoPlayer;->getPlaybackState()I

    move-result v0

    .line 426
    .local v0, "playerState":I
    iget v2, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuildingState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 431
    goto :goto_0
.end method

.method public getPlayerControl()Lcom/google/android/exoplayer/util/PlayerControl;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->playerControl:Lcom/google/android/exoplayer/util/PlayerControl;

    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->getSelectedTrack(I)I

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getTrackCount(I)I
    .locals 1
    .param p1, "rendererIndex"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackCount(I)I

    move-result v0

    return v0
.end method

.method public getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1
    .param p1, "rendererIndex"    # I
    .param p2, "trackIndex"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;

    .prologue
    .line 521
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    invoke-interface {v0, p1}, Lorg/succlz123/okplayer/listener/InternalErrorListener;->onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V

    .line 524
    :cond_0
    return-void
.end method

.method public onAudioTrackUnderrun(IJJ)V
    .locals 0
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .prologue
    .line 543
    return-void
.end method

.method public onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;

    .prologue
    .line 528
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    invoke-interface {v0, p1}, Lorg/succlz123/okplayer/listener/InternalErrorListener;->onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V

    .line 531
    :cond_0
    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .locals 8
    .param p1, "elapsedMs"    # I
    .param p2, "bytes"    # J
    .param p4, "bitrate"    # J

    .prologue
    .line 599
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->infoListener:Lorg/succlz123/okplayer/listener/InfoListener;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->infoListener:Lorg/succlz123/okplayer/listener/InfoListener;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/succlz123/okplayer/listener/InfoListener;->onBandwidthSample(IJJ)V

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/succlz123/okplayer/listener/OkPlayerListener;

    .line 604
    .local v7, "okPlayerListener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    instance-of v0, v7, Lorg/succlz123/okplayer/listener/OkMuxListener;

    if-eqz v0, :cond_1

    move-object v0, v7

    .line 605
    check-cast v0, Lorg/succlz123/okplayer/listener/OkMuxListener;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/succlz123/okplayer/listener/OkMuxListener;->onBandwidthSample(IJJ)V

    goto :goto_0

    .line 608
    .end local v7    # "okPlayerListener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    :cond_2
    return-void
.end method

.method public onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
    .locals 1
    .param p1, "e"    # Landroid/media/MediaCodec$CryptoException;

    .prologue
    .line 472
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    invoke-interface {v0, p1}, Lorg/succlz123/okplayer/listener/InternalErrorListener;->onCryptoError(Landroid/media/MediaCodec$CryptoException;)V

    .line 475
    :cond_0
    return-void
.end method

.method public onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;

    .prologue
    .line 465
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    invoke-interface {v0, p1}, Lorg/succlz123/okplayer/listener/InternalErrorListener;->onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V

    .line 468
    :cond_0
    return-void
.end method

.method public onDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "initializationDurationMs"    # J

    .prologue
    .line 485
    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer/chunk/Format;IJ)V
    .locals 2
    .param p1, "sourceId"    # I
    .param p2, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p3, "trigger"    # I
    .param p4, "mediaTimeMs"    # J

    .prologue
    .line 579
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->infoListener:Lorg/succlz123/okplayer/listener/InfoListener;

    if-nez v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    if-nez p1, :cond_2

    .line 583
    iput-object p2, p0, Lorg/succlz123/okplayer/OkPlayer;->videoFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 584
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->infoListener:Lorg/succlz123/okplayer/listener/InfoListener;

    invoke-interface {v0, p2, p3, p4, p5}, Lorg/succlz123/okplayer/listener/InfoListener;->onVideoFormatEnabled(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    goto :goto_0

    .line 585
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 586
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->infoListener:Lorg/succlz123/okplayer/listener/InfoListener;

    invoke-interface {v0, p2, p3, p4, p5}, Lorg/succlz123/okplayer/listener/InfoListener;->onAudioFormatEnabled(Lcom/google/android/exoplayer/chunk/Format;IJ)V

    goto :goto_0
.end method

.method public onDrawnToSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 514
    return-void
.end method

.method public onDrmKeysLoaded()V
    .locals 0

    .prologue
    .line 616
    return-void
.end method

.method public onDrmSessionManagerError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 620
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    invoke-interface {v0, p1}, Lorg/succlz123/okplayer/listener/InternalErrorListener;->onDrmSessionManagerError(Ljava/lang/Exception;)V

    .line 623
    :cond_0
    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 2
    .param p1, "count"    # I
    .param p2, "elapsed"    # J

    .prologue
    .line 494
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->infoListener:Lorg/succlz123/okplayer/listener/InfoListener;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->infoListener:Lorg/succlz123/okplayer/listener/InfoListener;

    invoke-interface {v0, p1, p2, p3}, Lorg/succlz123/okplayer/listener/InfoListener;->onDroppedFrames(IJ)V

    .line 497
    :cond_0
    return-void
.end method

.method public onLoadCanceled(IJ)V
    .locals 0
    .param p1, "sourceId"    # I
    .param p2, "bytesLoaded"    # J

    .prologue
    .line 563
    return-void
.end method

.method public onLoadCompleted(IJIILcom/google/android/exoplayer/chunk/Format;JJJJ)V
    .locals 0
    .param p1, "sourceId"    # I
    .param p2, "bytesLoaded"    # J
    .param p4, "type"    # I
    .param p5, "trigger"    # I
    .param p6, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p7, "mediaStartTimeMs"    # J
    .param p9, "mediaEndTimeMs"    # J
    .param p11, "elapsedRealtimeMs"    # J
    .param p13, "loadDurationMs"    # J

    .prologue
    .line 558
    return-void
.end method

.method public onLoadError(ILjava/io/IOException;)V
    .locals 1
    .param p1, "sourceId"    # I
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 567
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    invoke-interface {v0, p1, p2}, Lorg/succlz123/okplayer/listener/InternalErrorListener;->onLoadError(ILjava/io/IOException;)V

    .line 570
    :cond_0
    return-void
.end method

.method public onLoadStarted(IJIILcom/google/android/exoplayer/chunk/Format;JJ)V
    .locals 0
    .param p1, "sourceId"    # I
    .param p2, "length"    # J
    .param p4, "type"    # I
    .param p5, "trigger"    # I
    .param p6, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p7, "mediaStartTimeMs"    # J
    .param p9, "mediaEndTimeMs"    # J

    .prologue
    .line 553
    return-void
.end method

.method public onPlayWhenReadyCommitted()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer/ExoPlaybackException;)V
    .locals 3
    .param p1, "error"    # Lcom/google/android/exoplayer/ExoPlaybackException;

    .prologue
    .line 454
    const/4 v2, 0x1

    iput v2, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuildingState:I

    .line 455
    iget-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/succlz123/okplayer/listener/OkPlayerListener;

    .line 456
    .local v1, "listener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    invoke-interface {v1, p1}, Lorg/succlz123/okplayer/listener/OkPlayerListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 458
    .end local v1    # "listener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    :cond_0
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 3
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 441
    invoke-direct {p0}, Lorg/succlz123/okplayer/OkPlayer;->maybeReportPlayerState()V

    .line 442
    iget-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/succlz123/okplayer/listener/OkPlayerListener;

    .line 443
    .local v1, "listener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    invoke-interface {v1, p1, p2}, Lorg/succlz123/okplayer/listener/OkPlayerListener;->onStateChanged(ZI)V

    goto :goto_0

    .line 445
    .end local v1    # "listener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    :cond_0
    return-void
.end method

.method public onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V
    .locals 3
    .param p1, "renderers"    # [Lcom/google/android/exoplayer/TrackRenderer;
    .param p2, "bandwidthMeter"    # Lcom/google/android/exoplayer/upstream/BandwidthMeter;

    .prologue
    const/4 v2, 0x0

    .line 353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 354
    aget-object v1, p1, v0

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Lcom/google/android/exoplayer/DummyTrackRenderer;

    invoke-direct {v1}, Lcom/google/android/exoplayer/DummyTrackRenderer;-><init>()V

    aput-object v1, p1, v0

    .line 353
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_1
    aget-object v1, p1, v2

    iput-object v1, p0, Lorg/succlz123/okplayer/OkPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 361
    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lorg/succlz123/okplayer/OkPlayer;->audioRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 363
    invoke-virtual {p0, v2}, Lorg/succlz123/okplayer/OkPlayer;->pushSurface(Z)V

    .line 365
    iget-object v1, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v1, p1}, Lcom/google/android/exoplayer/ExoPlayer;->prepare([Lcom/google/android/exoplayer/TrackRenderer;)V

    .line 367
    const/4 v1, 0x3

    iput v1, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuildingState:I

    .line 368
    return-void
.end method

.method public onRenderersError(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 390
    iget-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    invoke-interface {v2, p1}, Lorg/succlz123/okplayer/listener/InternalErrorListener;->onRendererInitializationError(Ljava/lang/Exception;)V

    .line 393
    :cond_0
    iget-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/succlz123/okplayer/listener/OkPlayerListener;

    .line 394
    .local v1, "listener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    invoke-interface {v1, p1}, Lorg/succlz123/okplayer/listener/OkPlayerListener;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 396
    .end local v1    # "listener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    :cond_1
    const/4 v2, 0x1

    iput v2, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuildingState:I

    .line 397
    invoke-direct {p0}, Lorg/succlz123/okplayer/OkPlayer;->maybeReportPlayerState()V

    .line 398
    return-void
.end method

.method public onUpstreamDiscarded(IJJ)V
    .locals 0
    .param p1, "sourceId"    # I
    .param p2, "mediaStartTimeMs"    # J
    .param p4, "mediaEndTimeMs"    # J

    .prologue
    .line 575
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 501
    iget-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/succlz123/okplayer/listener/OkPlayerListener;

    .line 502
    .local v1, "listener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/succlz123/okplayer/listener/OkPlayerListener;->onVideoSizeChanged(IIIF)V

    goto :goto_0

    .line 504
    .end local v1    # "listener":Lorg/succlz123/okplayer/listener/OkPlayerListener;
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    iget-boolean v0, p0, Lorg/succlz123/okplayer/OkPlayer;->prepared:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuilder:Lorg/succlz123/okplayer/builder/RendererBuilder;

    if-nez v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget v0, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuildingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 322
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->stop()V

    .line 324
    :cond_2
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuilder:Lorg/succlz123/okplayer/builder/RendererBuilder;

    invoke-interface {v0}, Lorg/succlz123/okplayer/builder/RendererBuilder;->cancel()V

    .line 326
    iput-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->videoFormat:Lcom/google/android/exoplayer/chunk/Format;

    .line 327
    iput-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    .line 328
    const/4 v0, 0x2

    iput v0, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuildingState:I

    .line 329
    invoke-direct {p0}, Lorg/succlz123/okplayer/OkPlayer;->maybeReportPlayerState()V

    .line 331
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuilder:Lorg/succlz123/okplayer/builder/RendererBuilder;

    invoke-interface {v0, p0}, Lorg/succlz123/okplayer/builder/RendererBuilder;->buildRenderers(Lorg/succlz123/okplayer/OkPlayer;)V

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/succlz123/okplayer/OkPlayer;->prepared:Z

    goto :goto_0
.end method

.method public pushSurface(Z)V
    .locals 4
    .param p1, "blockForSurfacePush"    # Z

    .prologue
    const/4 v3, 0x1

    .line 371
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 375
    :cond_0
    if-eqz p1, :cond_1

    .line 378
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lorg/succlz123/okplayer/OkPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->surface:Landroid/view/Surface;

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->blockingSendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    iget-object v1, p0, Lorg/succlz123/okplayer/OkPlayer;->videoRenderer:Lcom/google/android/exoplayer/TrackRenderer;

    iget-object v2, p0, Lorg/succlz123/okplayer/OkPlayer;->surface:Landroid/view/Surface;

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/exoplayer/ExoPlayer;->sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuilder:Lorg/succlz123/okplayer/builder/RendererBuilder;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuilder:Lorg/succlz123/okplayer/builder/RendererBuilder;

    invoke-interface {v0}, Lorg/succlz123/okplayer/builder/RendererBuilder;->cancel()V

    .line 346
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuildingState:I

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->surface:Landroid/view/Surface;

    .line 348
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 349
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer/ExoPlayer;->release()V

    .line 350
    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/exoplayer/ExoPlayer$Listener;

    .prologue
    .line 145
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public replaceRenderBuilder(Lorg/succlz123/okplayer/builder/RendererBuilder;)V
    .locals 0
    .param p1, "rendererBuilder"    # Lorg/succlz123/okplayer/builder/RendererBuilder;

    .prologue
    .line 216
    iput-object p1, p0, Lorg/succlz123/okplayer/OkPlayer;->rendererBuilder:Lorg/succlz123/okplayer/builder/RendererBuilder;

    .line 217
    return-void
.end method

.method public seekTo(J)V
    .locals 1
    .param p1, "positionMs"    # J

    .prologue
    .line 336
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->seekTo(J)V

    .line 337
    return-void
.end method

.method public setBackgrounded(Z)V
    .locals 2
    .param p1, "backgrounded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-boolean v0, p0, Lorg/succlz123/okplayer/OkPlayer;->backgrounded:Z

    if-ne v0, p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 286
    :cond_0
    iput-boolean p1, p0, Lorg/succlz123/okplayer/OkPlayer;->backgrounded:Z

    .line 287
    if-eqz p1, :cond_1

    .line 289
    invoke-virtual {p0, v1}, Lorg/succlz123/okplayer/OkPlayer;->getSelectedTrack(I)I

    move-result v0

    iput v0, p0, Lorg/succlz123/okplayer/OkPlayer;->videoTrackToRestore:I

    .line 291
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lorg/succlz123/okplayer/OkPlayer;->setSelectedTrack(II)V

    .line 294
    invoke-virtual {p0}, Lorg/succlz123/okplayer/OkPlayer;->blockingClearSurface()V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0, v1, v1}, Lorg/succlz123/okplayer/OkPlayer;->setSelectedTrack(II)V

    goto :goto_0
.end method

.method public setCaptionListener(Lorg/succlz123/okplayer/listener/CaptionListener;)V
    .locals 0
    .param p1, "captionListener"    # Lorg/succlz123/okplayer/listener/CaptionListener;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/succlz123/okplayer/OkPlayer;->captionListener:Lorg/succlz123/okplayer/listener/CaptionListener;

    .line 260
    return-void
.end method

.method public setId3MetadataListener(Lorg/succlz123/okplayer/listener/Id3MetadataListener;)V
    .locals 0
    .param p1, "id3MetadataListener"    # Lorg/succlz123/okplayer/listener/Id3MetadataListener;

    .prologue
    .line 267
    iput-object p1, p0, Lorg/succlz123/okplayer/OkPlayer;->id3MetadataListener:Lorg/succlz123/okplayer/listener/Id3MetadataListener;

    .line 268
    return-void
.end method

.method public setInfoListener(Lorg/succlz123/okplayer/listener/InfoListener;)V
    .locals 0
    .param p1, "infoListener"    # Lorg/succlz123/okplayer/listener/InfoListener;

    .prologue
    .line 275
    iput-object p1, p0, Lorg/succlz123/okplayer/OkPlayer;->infoListener:Lorg/succlz123/okplayer/listener/InfoListener;

    .line 276
    return-void
.end method

.method public setInternalErrorListener(Lorg/succlz123/okplayer/listener/InternalErrorListener;)V
    .locals 0
    .param p1, "internalErrorListener"    # Lorg/succlz123/okplayer/listener/InternalErrorListener;

    .prologue
    .line 251
    iput-object p1, p0, Lorg/succlz123/okplayer/OkPlayer;->internalErrorListener:Lorg/succlz123/okplayer/listener/InternalErrorListener;

    .line 252
    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer/ExoPlayer;->setPlayWhenReady(Z)V

    .line 311
    return-void
.end method

.method public setSelectedTrack(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "index"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->player:Lcom/google/android/exoplayer/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayer;->setSelectedTrack(II)V

    .line 237
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-gez p2, :cond_0

    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->captionListener:Lorg/succlz123/okplayer/listener/CaptionListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/succlz123/okplayer/OkPlayer;->captionListener:Lorg/succlz123/okplayer/listener/CaptionListener;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/succlz123/okplayer/listener/CaptionListener;->onCues(Ljava/util/List;)V

    .line 240
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 157
    iput-object p1, p0, Lorg/succlz123/okplayer/OkPlayer;->surface:Landroid/view/Surface;

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/succlz123/okplayer/OkPlayer;->pushSurface(Z)V

    .line 159
    return-void
.end method
