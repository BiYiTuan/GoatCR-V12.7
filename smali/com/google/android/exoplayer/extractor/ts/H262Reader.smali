.class final Lcom/google/android/exoplayer/extractor/ts/H262Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "H262Reader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3


# instance fields
.field private final csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

.field private foundFirstFrameInGroup:Z

.field private framePosition:J

.field private frameTimeUs:J

.field private hasOutputFormat:Z

.field private isKeyframe:Z

.field private final prefixFlags:[Z

.field private totalBytesWritten:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 55
    new-instance v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    .line 56
    return-void
.end method

.method private static parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 18
    .param p0, "csdBuffer"    # Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->data:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    .line 141
    .local v14, "csdData":[B
    const/4 v2, 0x4

    aget-byte v2, v14, v2

    and-int/lit16 v15, v2, 0xff

    .line 142
    .local v15, "firstByte":I
    const/4 v2, 0x5

    aget-byte v2, v14, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v16, v0

    .line 143
    .local v16, "secondByte":I
    const/4 v2, 0x6

    aget-byte v2, v14, v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v17, v0

    .line 144
    .local v17, "thirdByte":I
    shl-int/lit8 v2, v15, 0x4

    shr-int/lit8 v3, v16, 0x4

    or-int v8, v2, v3

    .line 145
    .local v8, "width":I
    and-int/lit8 v2, v16, 0xf

    shl-int/lit8 v2, v2, 0x8

    or-int v9, v2, v17

    .line 147
    .local v9, "height":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 148
    .local v12, "pixelWidthHeightRatio":F
    const/4 v2, 0x7

    aget-byte v2, v14, v2

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v13, v2, 0x4

    .line 149
    .local v13, "aspectRatioCode":I
    packed-switch v13, :pswitch_data_0

    .line 164
    :goto_0
    const/4 v2, 0x0

    const-string v3, "video/mpeg2"

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-wide/16 v6, -0x1

    invoke-static {v14}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, -0x1

    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer/MediaFormat;->createVideoFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v2

    return-object v2

    .line 151
    :pswitch_0
    mul-int/lit8 v2, v9, 0x4

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x3

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 152
    goto :goto_0

    .line 154
    :pswitch_1
    mul-int/lit8 v2, v9, 0x10

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x9

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 155
    goto :goto_0

    .line 157
    :pswitch_2
    mul-int/lit8 v2, v9, 0x79

    int-to-float v2, v2

    mul-int/lit8 v3, v8, 0x64

    int-to-float v3, v3

    div-float v12, v2, v3

    .line 158
    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 22
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "pesTimeUs"    # J
    .param p4, "startOfPacket"    # Z

    .prologue
    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    if-lez v5, :cond_0

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v15

    .line 70
    .local v15, "offset":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v14

    .line 71
    .local v14, "limit":I
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    .line 74
    .local v12, "dataArray":[B
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v20, v0

    add-long v6, v6, v20

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 75
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 77
    move/from16 v16, v15

    .line 79
    .local v16, "searchOffset":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    move/from16 v0, v16

    invoke-static {v12, v0, v14, v5}, Lcom/google/android/exoplayer/util/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v17

    .line 81
    .local v17, "startCodeOffset":I
    move/from16 v0, v17

    if-ne v0, v14, :cond_1

    .line 83
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v5, :cond_0

    .line 84
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v5, v12, v15, v14}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 131
    .end local v12    # "dataArray":[B
    .end local v14    # "limit":I
    .end local v15    # "offset":I
    .end local v16    # "searchOffset":I
    .end local v17    # "startCodeOffset":I
    :cond_0
    return-void

    .line 90
    .restart local v12    # "dataArray":[B
    .restart local v14    # "limit":I
    .restart local v15    # "offset":I
    .restart local v16    # "searchOffset":I
    .restart local v17    # "startCodeOffset":I
    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    add-int/lit8 v6, v17, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v0, v5, 0xff

    move/from16 v18, v0

    .line 92
    .local v18, "startCodeValue":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v5, :cond_3

    .line 95
    sub-int v13, v17, v15

    .line 96
    .local v13, "lengthToStartCode":I
    if-lez v13, :cond_2

    .line 97
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v17

    invoke-virtual {v5, v12, v15, v0}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    .line 101
    :cond_2
    if-gez v13, :cond_7

    neg-int v4, v13

    .line 102
    .local v4, "bytesAlreadyPassed":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    move/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-static {v6}, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->parseMediaFormat(Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 105
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    .line 109
    .end local v4    # "bytesAlreadyPassed":I
    .end local v13    # "lengthToStartCode":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v5, :cond_6

    const/16 v5, 0xb8

    move/from16 v0, v18

    if-eq v0, v5, :cond_4

    if-nez v18, :cond_6

    .line 110
    :cond_4
    sub-int v10, v14, v17

    .line 111
    .local v10, "bytesWrittenPastStartCode":I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    if-eqz v5, :cond_5

    .line 112
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    if-eqz v5, :cond_8

    const/4 v8, 0x1

    .line 113
    .local v8, "flags":I
    :goto_2
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->framePosition:J

    move-wide/from16 v20, v0

    sub-long v6, v6, v20

    long-to-int v5, v6

    sub-int v9, v5, v10

    .line 114
    .local v9, "size":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 115
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    .line 117
    .end local v8    # "flags":I
    .end local v9    # "size":I
    :cond_5
    const/16 v5, 0xb8

    move/from16 v0, v18

    if-ne v0, v5, :cond_9

    .line 118
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 119
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->isKeyframe:Z

    .line 127
    .end local v10    # "bytesWrittenPastStartCode":I
    :cond_6
    :goto_3
    move/from16 v15, v17

    .line 128
    add-int/lit8 v16, v15, 0x3

    .line 129
    goto/16 :goto_0

    .line 101
    .restart local v13    # "lengthToStartCode":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 112
    .end local v13    # "lengthToStartCode":I
    .restart local v10    # "bytesWrittenPastStartCode":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 121
    :cond_9
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 122
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->frameTimeUs:J

    .line 123
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v0, v10

    move-wide/from16 v20, v0

    sub-long v6, v6, v20

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->framePosition:J

    goto :goto_3
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public seek()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->prefixFlags:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer/util/NalUnitUtil;->clearPrefixFlags([Z)V

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->csdBuffer:Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/ts/H262Reader$CsdBuffer;->reset()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->foundFirstFrameInGroup:Z

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 64
    return-void
.end method
