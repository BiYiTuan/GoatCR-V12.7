.class final Lcom/google/android/exoplayer/text/SubtitleParserHelper;
.super Ljava/lang/Object;
.source "SubtitleParserHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_FORMAT:I = 0x0

.field private static final MSG_SAMPLE:I = 0x1


# instance fields
.field private error:Ljava/io/IOException;

.field private final handler:Landroid/os/Handler;

.field private final parser:Lcom/google/android/exoplayer/text/SubtitleParser;

.field private parsing:Z

.field private result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

.field private runtimeError:Ljava/lang/RuntimeException;

.field private sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

.field private subtitleOffsetUs:J

.field private subtitlesAreRelative:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer/text/SubtitleParser;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "parser"    # Lcom/google/android/exoplayer/text/SubtitleParser;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    .line 59
    iput-object p2, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parser:Lcom/google/android/exoplayer/text/SubtitleParser;

    .line 60
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->flush()V

    .line 61
    return-void
.end method

.method private handleFormat(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 4
    .param p1, "format"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 162
    iget-wide v0, p1, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->subtitlesAreRelative:Z

    .line 163
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->subtitlesAreRelative:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    iput-wide v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->subtitleOffsetUs:J

    .line 164
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 163
    :cond_1
    iget-wide v0, p1, Lcom/google/android/exoplayer/MediaFormat;->subsampleOffsetUs:J

    goto :goto_1
.end method

.method private handleSample(JLcom/google/android/exoplayer/SampleHolder;)V
    .locals 11
    .param p1, "sampleTimeUs"    # J
    .param p3, "holder"    # Lcom/google/android/exoplayer/SampleHolder;

    .prologue
    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "parsedSubtitle":Lcom/google/android/exoplayer/text/Subtitle;
    const/4 v8, 0x0

    .line 169
    .local v8, "error":Ljava/io/IOException;
    const/4 v10, 0x0

    .line 171
    .local v10, "runtimeError":Ljava/lang/RuntimeException;
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayInputStream;

    iget-object v1, p3, Lcom/google/android/exoplayer/SampleHolder;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v3, 0x0

    iget v4, p3, Lcom/google/android/exoplayer/SampleHolder;->size:I

    invoke-direct {v9, v1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 172
    .local v9, "inputStream":Ljava/io/InputStream;
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parser:Lcom/google/android/exoplayer/text/SubtitleParser;

    invoke-interface {v1, v9}, Lcom/google/android/exoplayer/text/SubtitleParser;->parse(Ljava/io/InputStream;)Lcom/google/android/exoplayer/text/Subtitle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 178
    .end local v9    # "inputStream":Ljava/io/InputStream;
    :goto_0
    monitor-enter p0

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    if-eq v1, p3, :cond_0

    .line 188
    :goto_1
    monitor-exit p0

    .line 189
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    move-object v8, v0

    .line 177
    goto :goto_0

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/RuntimeException;
    move-object v10, v0

    goto :goto_0

    .line 182
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer/text/PlayableSubtitle;

    iget-boolean v3, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->subtitlesAreRelative:Z

    iget-wide v6, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->subtitleOffsetUs:J

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer/text/PlayableSubtitle;-><init>(Lcom/google/android/exoplayer/text/Subtitle;ZJJ)V

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

    .line 184
    iput-object v8, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 185
    iput-object v10, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    .line 186
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    goto :goto_1

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized flush()V
    .locals 2

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer/SampleHolder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer/SampleHolder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndClearResult()Lcom/google/android/exoplayer/text/PlayableSubtitle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 134
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    throw v0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getSampleHolder()Lcom/google/android/exoplayer/SampleHolder;
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 158
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 150
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handleFormat(Lcom/google/android/exoplayer/MediaFormat;)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v4}, Lcom/google/android/exoplayer/util/Util;->getLong(II)J

    move-result-wide v2

    .line 154
    .local v2, "sampleTimeUs":J
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer/SampleHolder;

    .line 155
    .local v0, "holder":Lcom/google/android/exoplayer/SampleHolder;
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handleSample(JLcom/google/android/exoplayer/SampleHolder;)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized isParsing()Z
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFormat(Lcom/google/android/exoplayer/MediaFormat;)V
    .locals 2
    .param p1, "format"    # Lcom/google/android/exoplayer/MediaFormat;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 103
    return-void
.end method

.method public declared-synchronized startParseOperation()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 112
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->parsing:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->result:Lcom/google/android/exoplayer/text/PlayableSubtitle;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->error:Ljava/io/IOException;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->runtimeError:Ljava/lang/RuntimeException;

    .line 117
    iget-object v0, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v2, v2, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplayer/util/Util;->getTopInt(J)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    iget-wide v4, v3, Lcom/google/android/exoplayer/SampleHolder;->timeUs:J

    invoke-static {v4, v5}, Lcom/google/android/exoplayer/util/Util;->getBottomInt(J)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/exoplayer/text/SubtitleParserHelper;->sampleHolder:Lcom/google/android/exoplayer/SampleHolder;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
