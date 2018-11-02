.class final Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;
.super Ljava/lang/Object;
.source "HlsRendererBuilder.java"

# interfaces
.implements Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/succlz123/okplayer/builder/HlsRendererBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncRendererBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback",
        "<",
        "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field private canceled:Z

.field private final context:Landroid/content/Context;

.field private final player:Lorg/succlz123/okplayer/OkPlayer;

.field private final playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/util/ManifestFetcher",
            "<",
            "Lcom/google/android/exoplayer/hls/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/succlz123/okplayer/OkPlayer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "player"    # Lorg/succlz123/okplayer/OkPlayer;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->url:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    .line 95
    new-instance v0, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer/hls/HlsPlaylistParser;-><init>()V

    .line 96
    .local v0, "parser":Lcom/google/android/exoplayer/hls/HlsPlaylistParser;
    new-instance v1, Lcom/google/android/exoplayer/util/ManifestFetcher;

    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, p3, v2, v0}, Lcom/google/android/exoplayer/util/ManifestFetcher;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    iput-object v1, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    .line 98
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->canceled:Z

    .line 106
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->playlistFetcher:Lcom/google/android/exoplayer/util/ManifestFetcher;

    iget-object v1, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v1}, Lorg/succlz123/okplayer/OkPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer/util/ManifestFetcher;->singleLoad(Landroid/os/Looper;Lcom/google/android/exoplayer/util/ManifestFetcher$ManifestCallback;)V

    .line 102
    return-void
.end method

.method public onSingleManifest(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V
    .locals 26
    .param p1, "manifest"    # Lcom/google/android/exoplayer/hls/HlsPlaylist;

    .prologue
    .line 119
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v4, :cond_0

    .line 173
    :goto_0
    return-void

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v4}, Lorg/succlz123/okplayer/OkPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v12

    .line 126
    .local v12, "mainHandler":Landroid/os/Handler;
    new-instance v10, Lcom/google/android/exoplayer/DefaultLoadControl;

    new-instance v4, Lcom/google/android/exoplayer/upstream/DefaultAllocator;

    const/high16 v5, 0x10000

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/upstream/DefaultAllocator;-><init>(I)V

    invoke-direct {v10, v4}, Lcom/google/android/exoplayer/DefaultLoadControl;-><init>(Lcom/google/android/exoplayer/upstream/Allocator;)V

    .line 128
    .local v10, "loadControl":Lcom/google/android/exoplayer/LoadControl;
    new-instance v6, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;

    invoke-direct {v6}, Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;-><init>()V

    .line 130
    .local v6, "bandwidthMeter":Lcom/google/android/exoplayer/upstream/DefaultBandwidthMeter;
    const/4 v7, 0x0

    .line 131
    .local v7, "variantIndices":[I
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    if-eqz v4, :cond_1

    move-object/from16 v24, p1

    .line 132
    check-cast v24, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;

    .line 134
    .local v24, "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;->variants:Ljava/util/List;

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v5, v9, v11}, Lcom/google/android/exoplayer/chunk/VideoFormatSelectorUtil;->selectVideoFormatsForDefaultDisplay(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)[I
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 141
    array-length v4, v7

    if-nez v4, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v9, "No variants selected."

    invoke-direct {v5, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/succlz123/okplayer/OkPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v23

    .line 138
    .local v23, "e":Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/succlz123/okplayer/OkPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 149
    .end local v23    # "e":Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;
    .end local v24    # "masterPlaylist":Lcom/google/android/exoplayer/hls/HlsMasterPlaylist;
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->userAgent:Ljava/lang/String;

    invoke-direct {v3, v4, v6, v5}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/upstream/TransferListener;Ljava/lang/String;)V

    .line 150
    .local v3, "dataSource":Lcom/google/android/exoplayer/upstream/DataSource;
    new-instance v2, Lcom/google/android/exoplayer/hls/HlsChunkSource;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->url:Ljava/lang/String;

    const/4 v8, 0x1

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer/hls/HlsChunkSource;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Ljava/lang/String;Lcom/google/android/exoplayer/hls/HlsPlaylist;Lcom/google/android/exoplayer/upstream/BandwidthMeter;[II)V

    .line 152
    .local v2, "chunkSource":Lcom/google/android/exoplayer/hls/HlsChunkSource;
    new-instance v8, Lcom/google/android/exoplayer/hls/HlsSampleSource;

    const/high16 v11, 0x1000000

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplayer/hls/HlsSampleSource;-><init>(Lcom/google/android/exoplayer/hls/HlsChunkSource;Lcom/google/android/exoplayer/LoadControl;ILandroid/os/Handler;Lcom/google/android/exoplayer/hls/HlsSampleSource$EventListener;I)V

    .line 157
    .local v8, "sampleSource":Lcom/google/android/exoplayer/hls/HlsSampleSource;
    new-instance v14, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    const/16 v17, 0x1

    const-wide/16 v18, 0x1388

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    move-object/from16 v21, v0

    const/16 v22, 0x32

    move-object/from16 v16, v8

    move-object/from16 v20, v12

    invoke-direct/range {v14 .. v22}, Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/SampleSource;IJLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer$EventListener;I)V

    .line 159
    .local v14, "videoRenderer":Lcom/google/android/exoplayer/MediaCodecVideoTrackRenderer;
    new-instance v15, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v4}, Lorg/succlz123/okplayer/OkPlayer;->getMainHandler()Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->getCapabilities(Landroid/content/Context;)Lcom/google/android/exoplayer/audio/AudioCapabilities;

    move-result-object v21

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v21}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;)V

    .line 167
    .local v15, "audioRenderer":Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
    const/4 v4, 0x4

    new-array v0, v4, [Lcom/google/android/exoplayer/TrackRenderer;

    move-object/from16 v25, v0

    .line 168
    .local v25, "renderers":[Lcom/google/android/exoplayer/TrackRenderer;
    const/4 v4, 0x0

    aput-object v14, v25, v4

    .line 169
    const/4 v4, 0x1

    aput-object v15, v25, v4

    .line 172
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v6}, Lorg/succlz123/okplayer/OkPlayer;->onRenderers([Lcom/google/android/exoplayer/TrackRenderer;Lcom/google/android/exoplayer/upstream/BandwidthMeter;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onSingleManifest(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Lcom/google/android/exoplayer/hls/HlsPlaylist;

    invoke-virtual {p0, p1}, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->onSingleManifest(Lcom/google/android/exoplayer/hls/HlsPlaylist;)V

    return-void
.end method

.method public onSingleManifestError(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->canceled:Z

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/succlz123/okplayer/builder/HlsRendererBuilder$AsyncRendererBuilder;->player:Lorg/succlz123/okplayer/OkPlayer;

    invoke-virtual {v0, p1}, Lorg/succlz123/okplayer/OkPlayer;->onRenderersError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
