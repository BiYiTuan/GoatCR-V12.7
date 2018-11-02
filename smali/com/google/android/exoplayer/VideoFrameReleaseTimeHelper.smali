.class public final Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final CHOREOGRAPHER_SAMPLE_DELAY_MILLIS:J = 0x1f4L

.field private static final MAX_ALLOWED_DRIFT_NS:J = 0x1312d00L

.field private static final MIN_FRAMES_FOR_ADJUSTMENT:I = 0x6

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L


# instance fields
.field private adjustedLastFrameTimeNs:J

.field private choreographer:Landroid/view/Choreographer;

.field private frameCount:J

.field private haveSync:Z

.field private lastFramePresentationTimeUs:J

.field private pendingAdjustedFrameTimeNs:J

.field private sampledVsyncTimeNs:J

.field private syncFramePresentationTimeNs:J

.field private syncUnadjustedReleaseTimeNs:J

.field private final useDefaultDisplayVsync:Z

.field private final vsyncDurationNs:J

.field private final vsyncOffsetNs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;-><init>(FZ)V

    .line 58
    return-void
.end method

.method private constructor <init>(FZ)V
    .locals 4
    .param p1, "defaultDisplayRefreshRate"    # F
    .param p2, "useDefaultDisplayVsync"    # Z

    .prologue
    const-wide/16 v0, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean p2, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    .line 73
    if-eqz p2, :cond_0

    .line 74
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 75
    iget-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    .line 78
    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->getDefaultDisplayRefreshRate(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;-><init>(FZ)V

    .line 68
    return-void
.end method

.method private static closestVsync(JJJ)J
    .locals 14
    .param p0, "releaseTime"    # J
    .param p2, "sampledVsyncTime"    # J
    .param p4, "vsyncDuration"    # J

    .prologue
    .line 191
    sub-long v12, p0, p2

    div-long v10, v12, p4

    .line 192
    .local v10, "vsyncCount":J
    mul-long v12, p4, v10

    add-long v8, p2, v12

    .line 195
    .local v8, "snappedTimeNs":J
    cmp-long v12, p0, v8

    if-gtz v12, :cond_0

    .line 196
    sub-long v6, v8, p4

    .line 197
    .local v6, "snappedBeforeNs":J
    move-wide v2, v8

    .line 202
    .local v2, "snappedAfterNs":J
    :goto_0
    sub-long v0, v2, p0

    .line 203
    .local v0, "snappedAfterDiff":J
    sub-long v4, p0, v6

    .line 204
    .local v4, "snappedBeforeDiff":J
    cmp-long v12, v0, v4

    if-gez v12, :cond_1

    .end local v2    # "snappedAfterNs":J
    :goto_1
    return-wide v2

    .line 199
    .end local v0    # "snappedAfterDiff":J
    .end local v4    # "snappedBeforeDiff":J
    .end local v6    # "snappedBeforeNs":J
    :cond_0
    move-wide v6, v8

    .line 200
    .restart local v6    # "snappedBeforeNs":J
    add-long v2, v8, p4

    .restart local v2    # "snappedAfterNs":J
    goto :goto_0

    .restart local v0    # "snappedAfterDiff":J
    .restart local v4    # "snappedBeforeDiff":J
    :cond_1
    move-wide v2, v6

    .line 204
    goto :goto_1
.end method

.method private static getDefaultDisplayRefreshRate(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 209
    .local v0, "manager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method private isDriftTooLarge(JJ)Z
    .locals 9
    .param p1, "frameTimeNs"    # J
    .param p3, "releaseTimeNs"    # J

    .prologue
    .line 185
    iget-wide v4, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v0, p1, v4

    .line 186
    .local v0, "elapsedFrameTimeNs":J
    iget-wide v4, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    sub-long v2, p3, v4

    .line 187
    .local v2, "elapsedReleaseTimeNs":J
    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1312d00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 23
    .param p1, "framePresentationTimeUs"    # J
    .param p3, "unadjustedReleaseTimeNs"    # J

    .prologue
    .line 120
    const-wide/16 v8, 0x3e8

    mul-long v18, p1, v8

    .line 123
    .local v18, "framePresentationTimeNs":J
    move-wide/from16 v12, v18

    .line 124
    .local v12, "adjustedFrameTimeNs":J
    move-wide/from16 v6, p3

    .line 126
    .local v6, "adjustedReleaseTimeNs":J
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-eqz v8, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    cmp-long v8, p1, v8

    if-eqz v8, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 130
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    .line 132
    :cond_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v10, 0x6

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    .line 137
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v8, v18, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    div-long v14, v8, v10

    .line 140
    .local v14, "averageFrameDurationNs":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    add-long v16, v8, v14

    .line 142
    .local v16, "candidateAdjustedFrameTimeNs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 143
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 159
    .end local v14    # "averageFrameDurationNs":J
    .end local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-nez v8, :cond_2

    .line 160
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    .line 161
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    .line 162
    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    .line 163
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->onSynced()V

    .line 167
    :cond_2
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    .line 168
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    .line 170
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->sampledVsyncTimeNs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 177
    .end local v6    # "adjustedReleaseTimeNs":J
    :goto_1
    return-wide v6

    .line 145
    .restart local v6    # "adjustedReleaseTimeNs":J
    .restart local v14    # "averageFrameDurationNs":J
    .restart local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_3
    move-wide/from16 v12, v16

    .line 146
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v6, v8, v10

    goto :goto_0

    .line 152
    .end local v14    # "averageFrameDurationNs":J
    .end local v16    # "candidateAdjustedFrameTimeNs":J
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 153
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    goto :goto_0

    .line 175
    :cond_5
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->sampledVsyncTimeNs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->closestVsync(JJJ)J

    move-result-wide v20

    .line 177
    .local v20, "snappedTimeNs":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    sub-long v6, v20, v8

    goto :goto_1
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->choreographer:Landroid/view/Choreographer;

    .line 102
    :cond_0
    return-void
.end method

.method public doFrame(J)V
    .locals 5
    .param p1, "vsyncTimeNs"    # J

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->sampledVsyncTimeNs:J

    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->choreographer:Landroid/view/Choreographer;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    .line 108
    return-void
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    .line 87
    iget-boolean v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_0

    .line 88
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->sampledVsyncTimeNs:J

    .line 89
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->choreographer:Landroid/view/Choreographer;

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer/VideoFrameReleaseTimeHelper;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 92
    :cond_0
    return-void
.end method

.method protected onSynced()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method
