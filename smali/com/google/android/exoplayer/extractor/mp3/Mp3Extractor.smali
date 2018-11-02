.class public final Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;
    }
.end annotation


# static fields
.field private static final HEADER_MASK:I = -0x1f400

.field private static final ID3_TAG:I

.field private static final INFO_HEADER:I

.field private static final MAX_SNIFF_BYTES:I = 0x1000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final VBRI_HEADER:I

.field private static final XING_HEADER:I


# instance fields
.field private basisTimeUs:J

.field private extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

.field private final forcedFirstSampleTimestampUs:J

.field private final inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

.field private sampleBytesRemaining:I

.field private samplesRead:I

.field private final scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

.field private seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

.field private final synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

.field private synchronizedHeaderData:I

.field private trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->ID3_TAG:I

    .line 47
    const-string v0, "Xing"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    .line 48
    const-string v0, "Info"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    .line 49
    const-string v0, "VBRI"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;-><init>(J)V

    .line 72
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "forcedFirstSampleTimestampUs"    # J

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide p1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 82
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    const/16 v1, 0x3000

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    .line 83
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    .line 84
    new-instance v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer/util/MpegAudioHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    .line 85
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 86
    return-void
.end method

.method private static getPosition(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J
    .locals 4
    .param p0, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p1, "bufferingInput"    # Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    .prologue
    .line 432
    invoke-interface {p0}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->getAvailableByteCount()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private maybeResynchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .locals 7
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const v6, -0x1f400

    const/4 v5, 0x0

    .line 218
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 219
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v3, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v3, v3, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v4, 0x4

    invoke-virtual {v2, p1, v3, v5, v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readAllowingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    const-wide/16 v2, -0x1

    .line 236
    :goto_0
    return-wide v2

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    .line 224
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 225
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 226
    .local v1, "sampleHeaderData":I
    and-int v2, v1, v6

    iget v3, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    and-int/2addr v3, v6

    if-ne v2, v3, :cond_1

    .line 227
    invoke-static {v1}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->getFrameSize(I)I

    move-result v0

    .line 228
    .local v0, "frameSize":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v1, v2}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 230
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 234
    .end local v0    # "frameSize":I
    :cond_1
    iput v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 235
    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->skip(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 236
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizeCatchingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private parseSeekerFrame(Lcom/google/android/exoplayer/extractor/ExtractorInput;JJ)Z
    .locals 10
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "headerPosition"    # J
    .param p4, "inputLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v2, v2, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->getParsableByteArray(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)Lcom/google/android/exoplayer/util/ParsableByteArray;

    move-result-object v1

    .line 396
    .local v1, "frame":Lcom/google/android/exoplayer/util/ParsableByteArray;
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->version:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v8, :cond_2

    .line 398
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    if-eq v0, v8, :cond_1

    .line 399
    const/16 v7, 0x20

    .line 411
    .local v7, "xingBase":I
    :goto_0
    add-int/lit8 v0, v7, 0x4

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 412
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 413
    .local v6, "headerData":I
    sget v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->XING_HEADER:I

    if-eq v6, v0, :cond_0

    sget v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->INFO_HEADER:I

    if-ne v6, v0, :cond_4

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;->create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer/extractor/mp3/XingSeeker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    move v0, v8

    .line 427
    :goto_1
    return v0

    .line 401
    .end local v6    # "headerData":I
    .end local v7    # "xingBase":I
    :cond_1
    const/16 v7, 0x11

    .restart local v7    # "xingBase":I
    goto :goto_0

    .line 405
    .end local v7    # "xingBase":I
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    if-eq v0, v8, :cond_3

    .line 406
    const/16 v7, 0x11

    .restart local v7    # "xingBase":I
    goto :goto_0

    .line 408
    .end local v7    # "xingBase":I
    :cond_3
    const/16 v7, 0x9

    .restart local v7    # "xingBase":I
    goto :goto_0

    .line 419
    .restart local v6    # "headerData":I
    :cond_4
    const/16 v0, 0x24

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 420
    invoke-virtual {v1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 421
    sget v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->VBRI_HEADER:I

    if-ne v6, v0, :cond_5

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;->create(Lcom/google/android/exoplayer/util/MpegAudioHeader;Lcom/google/android/exoplayer/util/ParsableByteArray;J)Lcom/google/android/exoplayer/extractor/mp3/VbriSeeker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    move v0, v8

    .line 423
    goto :goto_1

    .line 427
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I
    .locals 14
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 175
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-nez v1, :cond_2

    .line 176
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->maybeResynchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v10

    .line 177
    .local v10, "headerPosition":J
    const-wide/16 v4, -0x1

    cmp-long v1, v10, v4

    if-nez v1, :cond_0

    .line 178
    const/4 v1, -0x1

    .line 210
    .end local v10    # "headerPosition":J
    :goto_0
    return v1

    .line 180
    .restart local v10    # "headerPosition":J
    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-static {p1, v4}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->getPosition(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J

    move-result-wide v4

    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 182
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v4, v5}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getTimeUs(J)J

    move-result-wide v8

    .line 184
    .local v8, "embeddedFirstSampleTimestampUs":J
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 187
    .end local v8    # "embeddedFirstSampleTimestampUs":J
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 190
    .end local v10    # "headerPosition":J
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    int-to-long v6, v1

    const-wide/32 v12, 0xf4240

    mul-long/2addr v6, v12

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    int-to-long v12, v1

    div-long/2addr v6, v12

    add-long v2, v4, v6

    .line 193
    .local v2, "timeUs":J
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v6, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->drainToOutput(Lcom/google/android/exoplayer/extractor/TrackOutput;I)I

    move-result v4

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 194
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_4

    .line 195
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v1}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 196
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    iget v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v5, 0x1

    invoke-interface {v1, p1, v4, v5}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer/extractor/ExtractorInput;IZ)I

    move-result v0

    .line 197
    .local v0, "bytesAppended":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 198
    const/4 v1, -0x1

    goto :goto_0

    .line 200
    :cond_3
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 202
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v1, :cond_4

    .line 203
    const/4 v1, 0x0

    goto :goto_0

    .line 207
    .end local v0    # "bytesAppended":I
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v5, v5, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer/extractor/TrackOutput;->sampleMetadata(JIII[B)V

    .line 208
    iget v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    iget-object v4, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v4, v4, Lcom/google/android/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    .line 209
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 210
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupSeeker(Lcom/google/android/exoplayer/extractor/ExtractorInput;J)V
    .locals 8
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "headerPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 358
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->parseSeekerFrame(Lcom/google/android/exoplayer/extractor/ExtractorInput;JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-eqz v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v1, v6, v2}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V

    .line 369
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v0, v0, Lcom/google/android/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v0, v0

    add-long/2addr p2, v0

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    .line 375
    new-instance v0, Lcom/google/android/exoplayer/extractor/mp3/ConstantBitrateSeeker;

    iget-object v1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v1, v1, Lcom/google/android/exoplayer/util/MpegAudioHeader;->bitrate:I

    mul-int/lit16 v3, v1, 0x3e8

    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    move-wide v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer/extractor/mp3/ConstantBitrateSeeker;-><init>(JIJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    goto :goto_0
.end method

.method private synchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .locals 24
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->reset()V

    .line 262
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->getPosition(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J

    move-result-wide v20

    .line 265
    .local v20, "startPosition":J
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-nez v4, :cond_0

    .line 267
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->read(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)V

    .line 268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    sget v5, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->ID3_TAG:I

    if-eq v4, v5, :cond_2

    .line 280
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    .line 284
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 285
    move-wide/from16 v18, v20

    .line 286
    .local v18, "headerPosition":J
    const/16 v22, 0x0

    .line 287
    .local v22, "validFrameCount":I
    const/4 v14, 0x0

    .line 289
    .local v14, "candidateSynchronizedHeaderData":I
    :goto_2
    sub-long v4, v18, v20

    const-wide/32 v6, 0x20000

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 290
    new-instance v4, Lcom/google/android/exoplayer/ParserException;

    const-string v5, "Searched too many bytes while resynchronizing."

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    .end local v14    # "candidateSynchronizedHeaderData":I
    .end local v18    # "headerPosition":J
    .end local v20    # "startPosition":J
    .end local v22    # "validFrameCount":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    goto :goto_0

    .line 272
    .restart local v20    # "startPosition":J
    :cond_2
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    const/4 v6, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->readFully([BII)V

    .line 274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v4, v4, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0x7f

    shl-int/lit8 v4, v4, 0x15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit8 v5, v5, 0x7f

    or-int v17, v4, v5

    .line 276
    .local v17, "headerLength":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->skipFully(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->reset()V

    .line 278
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->getPosition(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;)J

    move-result-wide v20

    .line 279
    goto/16 :goto_1

    .line 293
    .end local v17    # "headerLength":I
    .restart local v14    # "candidateSynchronizedHeaderData":I
    .restart local v18    # "headerPosition":J
    .restart local v22    # "validFrameCount":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->readAllowingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;[BII)Z

    move-result v4

    if-nez v4, :cond_5

    .line 294
    const-wide/16 v18, -0x1

    .line 340
    .end local v18    # "headerPosition":J
    :cond_4
    :goto_3
    return-wide v18

    .line 297
    .restart local v18    # "headerPosition":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v16

    .line 300
    .local v16, "headerData":I
    if-eqz v14, :cond_6

    const v4, -0x1f400

    and-int v4, v4, v16

    const v5, -0x1f400

    and-int/2addr v5, v14

    if-ne v4, v5, :cond_7

    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->getFrameSize(I)I

    move-result v15

    .local v15, "frameSize":I
    const/4 v4, -0x1

    if-ne v15, v4, :cond_8

    .line 303
    .end local v15    # "frameSize":I
    :cond_7
    const/16 v22, 0x0

    .line 304
    const/4 v14, 0x0

    .line 307
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    .line 308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->skip(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->mark()V

    .line 310
    const-wide/16 v4, 0x1

    add-long v18, v18, v4

    .line 311
    goto/16 :goto_2

    .line 314
    .restart local v15    # "frameSize":I
    :cond_8
    if-nez v22, :cond_9

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    move/from16 v0, v16

    invoke-static {v0, v4}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->populateHeader(ILcom/google/android/exoplayer/util/MpegAudioHeader;)Z

    .line 316
    move/from16 v14, v16

    .line 320
    :cond_9
    add-int/lit8 v22, v22, 0x1

    .line 321
    const/4 v4, 0x4

    move/from16 v0, v22

    if-ne v0, v4, :cond_a

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v4}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->returnToMark()V

    .line 331
    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    if-nez v4, :cond_4

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->setupSeeker(Lcom/google/android/exoplayer/extractor/ExtractorInput;J)V

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v4, v5}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer/extractor/SeekMap;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-object/from16 v23, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget-object v5, v5, Lcom/google/android/exoplayer/util/MpegAudioHeader;->mimeType:Ljava/lang/String;

    const/4 v6, -0x1

    const/16 v7, 0x1000

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;

    invoke-interface {v8}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor$Seeker;->getDurationUs()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v10, v10, Lcom/google/android/exoplayer/util/MpegAudioHeader;->channels:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer/util/MpegAudioHeader;

    iget v11, v11, Lcom/google/android/exoplayer/util/MpegAudioHeader;->sampleRate:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v4 .. v13}, Lcom/google/android/exoplayer/MediaFormat;->createAudioFormat(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer/extractor/TrackOutput;->format(Lcom/google/android/exoplayer/MediaFormat;)V

    goto/16 :goto_3

    .line 326
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    add-int/lit8 v5, v15, -0x4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->skip(Lcom/google/android/exoplayer/extractor/ExtractorInput;I)V

    goto/16 :goto_2
.end method

.method private synchronizeCatchingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    .locals 4
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 245
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronize(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 247
    :goto_0
    return-wide v2

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/io/EOFException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer/extractor/ExtractorOutput;)V
    .locals 1
    .param p1, "extractorOutput"    # Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer/extractor/ExtractorOutput;

    .line 150
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->track(I)Lcom/google/android/exoplayer/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->trackOutput:Lcom/google/android/exoplayer/extractor/TrackOutput;

    .line 151
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 152
    return-void
.end method

.method public read(Lcom/google/android/exoplayer/extractor/ExtractorInput;Lcom/google/android/exoplayer/extractor/PositionHolder;)I
    .locals 4
    .param p1, "extractorInput"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lcom/google/android/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizeCatchingEndOfInput(Lcom/google/android/exoplayer/extractor/ExtractorInput;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 168
    const/4 v0, -0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->readSample(Lcom/google/android/exoplayer/extractor/ExtractorInput;)I

    move-result v0

    goto :goto_0
.end method

.method public seek()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    .line 157
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->samplesRead:I

    .line 158
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 159
    iput v2, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->inputBuffer:Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/extractor/mp3/BufferingInput;->reset()V

    .line 161
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer/extractor/ExtractorInput;)Z
    .locals 11
    .param p1, "input"    # Lcom/google/android/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v5, Lcom/google/android/exoplayer/util/ParsableByteArray;

    const/4 v8, 0x4

    invoke-direct {v5, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>(I)V

    .line 91
    .local v5, "scratch":Lcom/google/android/exoplayer/util/ParsableByteArray;
    const/4 v6, 0x0

    .line 93
    .local v6, "startPosition":I
    :goto_0
    iget-object v8, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-interface {p1, v8, v9, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 94
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 95
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v8

    sget v9, Lcom/google/android/exoplayer/extractor/mp3/Mp3Extractor;->ID3_TAG:I

    if-eq v8, v9, :cond_0

    .line 105
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 106
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 109
    move v4, v6

    .line 110
    .local v4, "headerPosition":I
    const/4 v7, 0x0

    .line 111
    .local v7, "validFrameCount":I
    const/4 v0, 0x0

    .line 113
    .local v0, "candidateSynchronizedHeaderData":I
    :goto_1
    sub-int v8, v4, v6

    const/16 v9, 0x1000

    if-lt v8, v9, :cond_1

    .line 114
    const/4 v8, 0x0

    .line 139
    :goto_2
    return v8

    .line 98
    .end local v0    # "candidateSynchronizedHeaderData":I
    .end local v4    # "headerPosition":I
    .end local v7    # "validFrameCount":I
    :cond_0
    const/4 v8, 0x3

    invoke-interface {p1, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 99
    iget-object v8, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-interface {p1, v8, v9, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 100
    iget-object v8, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x7f

    shl-int/lit8 v8, v8, 0x15

    iget-object v9, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, 0x7f

    shl-int/lit8 v9, v9, 0xe

    or-int/2addr v8, v9

    iget-object v9, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, 0x7f

    shl-int/lit8 v9, v9, 0x7

    or-int/2addr v8, v9

    iget-object v9, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit8 v9, v9, 0x7f

    or-int v3, v8, v9

    .line 102
    .local v3, "headerLength":I
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    .line 103
    add-int/lit8 v8, v3, 0xa

    add-int/2addr v6, v8

    .line 104
    goto :goto_0

    .line 117
    .end local v3    # "headerLength":I
    .restart local v0    # "candidateSynchronizedHeaderData":I
    .restart local v4    # "headerPosition":I
    .restart local v7    # "validFrameCount":I
    :cond_1
    iget-object v8, v5, Lcom/google/android/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-interface {p1, v8, v9, v10}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 118
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 119
    invoke-virtual {v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 121
    .local v2, "headerData":I
    if-eqz v0, :cond_2

    const v8, -0x1f400

    and-int/2addr v8, v2

    const v9, -0x1f400

    and-int/2addr v9, v0

    if-ne v8, v9, :cond_3

    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer/util/MpegAudioHeader;->getFrameSize(I)I

    move-result v1

    .local v1, "frameSize":I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    .line 124
    .end local v1    # "frameSize":I
    :cond_3
    const/4 v7, 0x0

    .line 125
    const/4 v0, 0x0

    .line 128
    invoke-interface {p1}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->resetPeekPosition()V

    .line 129
    add-int/lit8 v4, v4, 0x1

    invoke-interface {p1, v4}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    .line 133
    .restart local v1    # "frameSize":I
    :cond_4
    if-nez v7, :cond_5

    .line 134
    move v0, v2

    .line 138
    :cond_5
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    .line 139
    const/4 v8, 0x1

    goto :goto_2

    .line 143
    :cond_6
    add-int/lit8 v8, v1, -0x4

    invoke-interface {p1, v8}, Lcom/google/android/exoplayer/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1
.end method
