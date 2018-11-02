.class public Lorg/succlz123/okplayer/listener/OkMuxListener;
.super Ljava/lang/Object;
.source "OkMuxListener.java"

# interfaces
.implements Lorg/succlz123/okplayer/listener/OkPlayerListener;
.implements Lorg/succlz123/okplayer/listener/CaptionListener;
.implements Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;
.implements Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioCapabilitiesChanged(Lcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 0
    .param p1, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .prologue
    .line 27
    return-void
.end method

.method public onBandwidthSample(IJJ)V
    .locals 0
    .param p1, "elapsedMs"    # I
    .param p2, "bytes"    # J
    .param p4, "bitrate"    # J

    .prologue
    .line 47
    return-void
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
    .line 22
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/exoplayer/text/Cue;>;"
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 37
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 0
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    .line 32
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unappliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 42
    return-void
.end method
