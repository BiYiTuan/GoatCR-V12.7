.class public Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;
.super Ljava/lang/Object;
.source "ExtractorRendererBuilder.java"

# interfaces
.implements Lorg/succlz123/okplayer/builder/RendererBuilder;


# static fields
.field private static final BUFFER_SEGMENT_COUNT:I = 0x100

.field private static final BUFFER_SEGMENT_SIZE:I = 0x10000


# instance fields
.field private final context:Landroid/content/Context;

.field private final uri:Landroid/net/Uri;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;->userAgent:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;->uri:Landroid/net/Uri;

    .line 51
    return-void
.end method


# virtual methods
.method public buildRenderers(Lorg/succlz123/okplayer/OkPlayer;)V
    .locals 17
    .param p1, "player"    # Lorg/succlz123/okplayer/OkPlayer;

    .prologue
    .line 56
    new-instance v5, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v3, 0x10000

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    .line 57
    .local v5, "allocator":Lcom/google/android/exoplayer/upstream/Allocator;
    new-instance v15, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-virtual/range {p1 .. p1}, Lorg/succlz123/okplayer/OkPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-direct {v15, v3, v0}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer/upstream/BandwidthMeter$EventListener;)V

    .line 60
    .local v15, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v4, v3, v15, v8}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 61
    .local v4, "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v2, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;->uri:Landroid/net/Uri;

    const/high16 v6, 0x1000000

    const/4 v8, 0x0

    new-array v7, v8, [Lcom/google/android/exoplayer/extractor/Extractor;

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/Allocator;I[Lcom/google/android/exoplayer/extractor/Extractor;)V

    .line 68
    .local v2, "sampleSource":Lcom/google/android/exoplayer/extractor/ExtractorSampleSource;
    new-instance v6, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;->context:Landroid/content/Context;

    const/4 v9, 0x1

    const-wide/16 v10, 0x1388

    invoke-virtual/range {p1 .. p1}, Lorg/succlz123/okplayer/OkPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v12

    const/16 v14, 0x32

    move-object v8, v2

    move-object/from16 v13, p1

    invoke-direct/range {v6 .. v14}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 71
    .local v6, "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    new-instance v7, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/succlz123/okplayer/OkPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/succlz123/okplayer/builder/ExtractorRendererBuilder;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v13

    move-object v8, v2

    move-object/from16 v12, p1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;)V

    .line 77
    .local v7, "audioRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    const/4 v3, 0x4

    new-array v0, v3, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v16, v0

    .line 78
    .local v16, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v3, 0x0

    aput-object v6, v16, v3

    .line 79
    const/4 v3, 0x1

    aput-object v7, v16, v3

    .line 81
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lorg/succlz123/okplayer/OkPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    .line 82
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
