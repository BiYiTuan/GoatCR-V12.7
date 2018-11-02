.class public final Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;
.super Ljava/lang/Object;
.source "SingleSampleChunkSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/chunk/ChunkSource;


# instance fields
.field private final dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

.field private final dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private final durationUs:J

.field private final format:Lcom/google/android/exoplayer/chunk/Format;

.field private final mediaFormat:Lcom/google/android/exoplayer/MediaFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;Lcom/google/android/exoplayer/chunk/Format;JLcom/google/android/exoplayer/MediaFormat;)V
    .locals 0
    .param p1, "dataSource"    # Lcom/google/android/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
    .param p3, "format"    # Lcom/google/android/exoplayer/chunk/Format;
    .param p4, "durationUs"    # J
    .param p6, "mediaFormat"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    .line 51
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 52
    iput-object p3, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->format:Lcom/google/android/exoplayer/chunk/Format;

    .line 53
    iput-wide p4, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->durationUs:J

    .line 54
    iput-object p6, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 55
    return-void
.end method

.method private initChunk()Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 114
    new-instance v1, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;

    iget-object v2, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->dataSource:Lcom/google/android/exoplayer/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v5, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->format:Lcom/google/android/exoplayer/chunk/Format;

    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->durationUs:J

    iget-object v11, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    const/4 v12, 0x0

    const/4 v13, -0x1

    move v10, v4

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;ILcom/google/android/exoplayer/chunk/Format;JJILcom/google/android/exoplayer/MediaFormat;Lcom/google/android/exoplayer/drm/DrmInitData;I)V

    return-object v1
.end method


# virtual methods
.method public continueBuffering(J)V
    .locals 0
    .param p1, "playbackPositionUs"    # J

    .prologue
    .line 80
    return-void
.end method

.method public disable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/MediaChunk;>;"
    return-void
.end method

.method public enable(I)V
    .locals 0
    .param p1, "track"    # I

    .prologue
    .line 75
    return-void
.end method

.method public getChunkOperation(Ljava/util/List;JLcom/google/android/exoplayer/chunk/ChunkOperationHolder;)V
    .locals 1
    .param p2, "playbackPositionUs"    # J
    .param p4, "out"    # Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J",
            "Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Lcom/google/android/exoplayer/chunk/MediaChunk;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->endOfStream:Z

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->initChunk()Lcom/google/android/exoplayer/chunk/SingleSampleMediaChunk;

    move-result-object v0

    iput-object v0, p4, Lcom/google/android/exoplayer/chunk/ChunkOperationHolder;->chunk:Lcom/google/android/exoplayer/chunk/Chunk;

    goto :goto_0
.end method

.method public getFormat(I)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1
    .param p1, "track"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/SingleSampleChunkSource;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public maybeThrowError()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer/chunk/Chunk;)V
    .locals 0
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;

    .prologue
    .line 106
    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer/chunk/Chunk;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "chunk"    # Lcom/google/android/exoplayer/chunk/Chunk;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 111
    return-void
.end method

.method public prepare()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method
