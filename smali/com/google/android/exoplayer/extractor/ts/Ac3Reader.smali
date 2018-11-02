.class final Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;
.super Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;
.source "Ac3Reader.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private final headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

.field private final headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private final isEac3:Z

.field private lastByteWas0B:Z

.field private mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/extractor/TrackOutput;Z)V
    .locals 2
    .param p1, "output"    # Lcom/google/android/exoplayer/extractor/TrackOutput;
    .param p2, "isEac3"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/ElementaryStreamReader;-><init>(Lcom/google/android/exoplayer/extractor/TrackOutput;)V

    .line 63
    iput-boolean p2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    .line 64
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableBitArray;

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    .line 65
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    .line 67
    return-void
.end method

.method private continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z
    .locals 3
    .param p1, "source"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "target"    # [B
    .param p3, "targetLength"    # I

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int v2, p3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    .local v0, "bytesToRead":I
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 130
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    .line 131
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseHeader()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 162
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    if-nez v1, :cond_0

    .line 163
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-static {v1, v2, v4, v5, v2}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEac3SyncframeFormat(Lcom/google/android/exoplayer/util/ParsableBitArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    .line 166
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    .line 168
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    invoke-static {v1}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEAc3SyncframeSize([B)I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    .line 170
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->isEac3:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    invoke-static {v1}, Lcom/google/android/exoplayer/util/Ac3Util;->parseEAc3SyncframeAudioSampleCount([B)I

    move-result v0

    .line 175
    .local v0, "audioSamplesPerSyncframe":I
    :goto_2
    const-wide/32 v2, 0xf4240

    int-to-long v4, v0

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->mediaFormat:Lcom/google/android/exoplayer/MediaFormat;

    iget v1, v1, Lcom/google/android/exoplayer/MediaFormat;->sampleRate:I

    int-to-long v4, v1

    div-long/2addr v2, v4

    long-to-int v1, v2

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleDurationUs:J

    .line 177
    return-void

    .line 163
    .end local v0    # "audioSamplesPerSyncframe":I
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    invoke-static {v1, v2, v4, v5, v2}, Lcom/google/android/exoplayer/util/Ac3Util;->parseAc3SyncframeFormat(Lcom/google/android/exoplayer/util/ParsableBitArray;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v1

    goto :goto_0

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBits:Lcom/google/android/exoplayer/util/ParsableBitArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableBitArray;->data:[B

    invoke-static {v1}, Lcom/google/android/exoplayer/util/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v1

    goto :goto_1

    .line 170
    :cond_3
    invoke-static {}, Lcom/google/android/exoplayer/util/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_2
.end method

.method private skipToNextSync(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z
    .locals 5
    .param p1, "pesBuffer"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    const/16 v4, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_4

    .line 143
    iget-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    if-nez v1, :cond_1

    .line 144
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 147
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 148
    .local v0, "secondByte":I
    const/16 v1, 0x77

    if-ne v0, v1, :cond_2

    .line 149
    iput-boolean v3, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 155
    .end local v0    # "secondByte":I
    :goto_2
    return v2

    .line 152
    .restart local v0    # "secondByte":I
    :cond_2
    if-ne v0, v4, :cond_3

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_3

    .end local v0    # "secondByte":I
    :cond_4
    move v2, v3

    .line 155
    goto :goto_2
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer/util/ParsableByteArray;JZ)V
    .locals 8
    .param p1, "data"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "pesTimeUs"    # J
    .param p4, "startOfPacket"    # Z

    .prologue
    .line 78
    if-eqz p4, :cond_0

    .line 79
    iput-wide p2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_1

    .line 82
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 84
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->skipToNextSync(Lcom/google/android/exoplayer/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    .line 86
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v2, 0x0

    const/16 v3, 0xb

    aput-byte v3, v1, v2

    .line 87
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v2, 0x1

    const/16 v3, 0x77

    aput-byte v3, v1, v2

    .line 88
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->continueRead(Lcom/google/android/exoplayer/util/ParsableByteArray;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->parseHeader()V

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 95
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->headerScratchBytes:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/16 v3, 0x8

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 96
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 100
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101
    .local v0, "bytesToRead":I
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/util/ParsableByteArray;I)V

    .line 102
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    .line 103
    iget v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    iget v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->output:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 105
    iget-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->timeUs:J

    .line 106
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 111
    .end local v0    # "bytesToRead":I
    :cond_1
    return-void

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public packetFinished()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->state:I

    .line 72
    iput v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->bytesRead:I

    .line 73
    iput-boolean v0, p0, Lcom/google/android/exoplayer/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    .line 74
    return-void
.end method
