.class final Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final durationUs:J

.field private final firstFramePosition:J

.field private final inputLength:J

.field private final sizeBytes:J

.field private final tableOfContents:[J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 11
    .param p1, "inputLength"    # J
    .param p3, "firstFramePosition"    # J
    .param p5, "durationUs"    # J

    .prologue
    .line 83
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ[JJ)V

    .line 84
    return-void
.end method

.method private constructor <init>(JJJ[JJ)V
    .locals 1
    .param p1, "inputLength"    # J
    .param p3, "firstFramePosition"    # J
    .param p5, "durationUs"    # J
    .param p7, "tableOfContents"    # [J
    .param p8, "sizeBytes"    # J

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p7, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    .line 89
    iput-wide p3, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    .line 90
    iput-wide p8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    .line 91
    iput-wide p5, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    .line 92
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    .line 93
    return-void
.end method

.method public static create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;
    .locals 20
    .param p0, "mpegAudioHeader"    # Lcom/google/android/exoplayer/util/MpegAudioHeader;
    .param p1, "frame"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "position"    # J
    .param p4, "inputLength"    # J

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    move/from16 v19, v0

    .line 44
    .local v19, "samplesPerFrame":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    move/from16 v18, v0

    .line 45
    .local v18, "sampleRate":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v2, v2

    add-long v14, p2, v2

    .line 47
    .local v14, "firstFramePosition":J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v13

    .line 49
    .local v13, "flags":I
    and-int/lit8 v2, v13, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    .local v16, "frameCount":I
    if-nez v16, :cond_1

    .line 51
    .end local v16    # "frameCount":I
    :cond_0
    const/4 v3, 0x0

    .line 70
    :goto_0
    return-object v3

    .line 53
    .restart local v16    # "frameCount":I
    :cond_1
    move/from16 v0, v16

    int-to-long v2, v0

    move/from16 v0, v19

    int-to-long v4, v0

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    move/from16 v0, v18

    int-to-long v6, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 55
    .local v8, "durationUs":J
    and-int/lit8 v2, v13, 0x6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 57
    new-instance v3, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;

    move-wide/from16 v4, p4

    move-wide v6, v14

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ)V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    int-to-long v11, v2

    .line 61
    .local v11, "sizeBytes":J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 62
    const/16 v2, 0x63

    new-array v10, v2, [J

    .line 63
    .local v10, "tableOfContents":[J
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    const/16 v2, 0x63

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v10, v17

    .line 63
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 70
    :cond_3
    new-instance v3, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;

    move-wide/from16 v4, p4

    move-wide v6, v14

    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ[JJ)V

    goto :goto_0
.end method

.method private getTimeUsForTocIndex(I)J
    .locals 4
    .param p1, "tocIndex"    # I

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    add-int/lit8 v2, p1, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 13
    .param p1, "timeUs"    # J

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    .line 102
    invoke-virtual {p0}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    .line 128
    :cond_0
    :goto_0
    return-wide v6

    .line 105
    :cond_1
    long-to-float v5, p1

    mul-float/2addr v5, v10

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    long-to-float v8, v8

    div-float v4, v5, v8

    .line 107
    .local v4, "percent":F
    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_2

    .line 108
    const/4 v3, 0x0

    .line 127
    .local v3, "fx":F
    :goto_1
    const-wide/high16 v8, 0x3f70000000000000L    # 0.00390625

    float-to-double v10, v3

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    long-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-long v8, v8

    iget-wide v10, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    add-long v6, v8, v10

    .line 128
    .local v6, "position":J
    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_0

    iget-wide v8, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_0

    .line 109
    .end local v3    # "fx":F
    .end local v6    # "position":J
    :cond_2
    cmpl-float v5, v4, v10

    if-ltz v5, :cond_3

    .line 110
    const/high16 v3, 0x43800000    # 256.0f

    .restart local v3    # "fx":F
    goto :goto_1

    .line 112
    .end local v3    # "fx":F
    :cond_3
    float-to-int v0, v4

    .line 114
    .local v0, "a":I
    if-nez v0, :cond_4

    .line 115
    const/4 v1, 0x0

    .line 119
    .local v1, "fa":F
    :goto_2
    const/16 v5, 0x63

    if-ge v0, v5, :cond_5

    .line 120
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v8, v5, v0

    long-to-float v2, v8

    .line 124
    .local v2, "fb":F
    :goto_3
    sub-float v5, v2, v1

    int-to-float v8, v0

    sub-float v8, v4, v8

    mul-float/2addr v5, v8

    add-float v3, v1, v5

    .restart local v3    # "fx":F
    goto :goto_1

    .line 117
    .end local v1    # "fa":F
    .end local v2    # "fb":F
    .end local v3    # "fx":F
    :cond_4
    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v8, v0, -0x1

    aget-wide v8, v5, v8

    long-to-float v1, v8

    .restart local v1    # "fa":F
    goto :goto_2

    .line 122
    :cond_5
    const/high16 v2, 0x43800000    # 256.0f

    .restart local v2    # "fb":F
    goto :goto_3
.end method

.method public getTimeUs(J)J
    .locals 23
    .param p1, "position"    # J

    .prologue
    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v13

    if-nez v13, :cond_1

    .line 134
    const-wide/16 v14, 0x0

    .line 149
    :cond_0
    :goto_0
    return-wide v14

    .line 136
    :cond_1
    const-wide/high16 v18, 0x4070000000000000L    # 256.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    move-wide/from16 v20, v0

    sub-long v20, p1, v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v8, v18, v20

    .line 137
    .local v8, "offsetByte":D
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    double-to-long v0, v8

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-wide/from16 v0, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v13, v0, v1, v2, v3}, Lcom/google/android/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v12

    .line 138
    .local v12, "previousIndex":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocIndex(I)J

    move-result-wide v14

    .line 139
    .local v14, "previousTime":J
    const/16 v13, 0x62

    if-eq v12, v13, :cond_0

    .line 144
    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    const-wide/16 v10, 0x0

    .line 145
    .local v10, "previousByte":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v18, v12, 0x1

    aget-wide v4, v13, v18

    .line 146
    .local v4, "nextByte":J
    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocIndex(I)J

    move-result-wide v6

    .line 147
    .local v6, "nextTime":J
    cmp-long v13, v4, v10

    if-nez v13, :cond_3

    const-wide/16 v16, 0x0

    .line 149
    .local v16, "timeOffset":J
    :goto_2
    add-long v14, v14, v16

    goto :goto_0

    .line 144
    .end local v4    # "nextByte":J
    .end local v6    # "nextTime":J
    .end local v10    # "previousByte":J
    .end local v16    # "timeOffset":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v10, v13, v12

    goto :goto_1

    .line 147
    .restart local v4    # "nextByte":J
    .restart local v6    # "nextTime":J
    .restart local v10    # "previousByte":J
    :cond_3
    sub-long v18, v6, v14

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    mul-double v18, v18, v20

    sub-long v20, v4, v10

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_2
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
