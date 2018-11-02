.class public Lorg/videolan/vlc/util/Logcat;
.super Ljava/lang/Object;
.source "Logcat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/util/Logcat$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/UiTools/Logcat"


# instance fields
.field private mCallback:Lorg/videolan/vlc/util/Logcat$Callback;

.field private mProcess:Ljava/lang/Process;

.field private mRun:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mCallback:Lorg/videolan/vlc/util/Logcat$Callback;

    .line 34
    iput-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mThread:Ljava/lang/Thread;

    .line 35
    iput-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mProcess:Ljava/lang/Process;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/util/Logcat;->mRun:Z

    .line 43
    return-void
.end method

.method public static getLogcat()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v6, 0x6

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "logcat"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "-v"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "time"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "-d"

    aput-object v7, v0, v6

    const/4 v6, 0x4

    const-string v7, "-t"

    aput-object v7, v0, v6

    const/4 v6, 0x5

    const-string v7, "500"

    aput-object v7, v0, v6

    .line 151
    .local v0, "args":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 152
    .local v5, "process":Ljava/lang/Process;
    new-instance v2, Ljava/io/InputStreamReader;

    .line 153
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 154
    .local v2, "input":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 155
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v4, "log":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {v1}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 162
    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 164
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static writeLogcat(Ljava/lang/String;)V
    .locals 11
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v9, 0x4

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "logcat"

    aput-object v10, v0, v9

    const/4 v9, 0x1

    const-string v10, "-v"

    aput-object v10, v0, v9

    const/4 v9, 0x2

    const-string v10, "time"

    aput-object v10, v0, v9

    const/4 v9, 0x3

    const-string v10, "-d"

    aput-object v10, v0, v9

    .line 112
    .local v0, "args":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 114
    .local v8, "process":Ljava/lang/Process;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 118
    .local v5, "input":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .local v4, "fileStream":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 124
    .local v7, "output":Ljava/io/OutputStreamWriter;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 129
    .local v2, "bw":Ljava/io/BufferedWriter;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 130
    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 133
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 135
    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 136
    invoke-static {v7}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 137
    invoke-static {v1}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 138
    invoke-static {v5}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 140
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .end local v7    # "output":Ljava/io/OutputStreamWriter;
    :goto_1
    return-void

    .line 119
    :catch_1
    move-exception v3

    .line 120
    .local v3, "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 135
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "output":Ljava/io/OutputStreamWriter;
    :cond_0
    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 136
    invoke-static {v7}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 137
    invoke-static {v1}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 138
    invoke-static {v5}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    goto :goto_1

    .line 135
    .end local v6    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v9

    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 136
    invoke-static {v7}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 137
    invoke-static {v1}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 138
    invoke-static {v5}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    throw v9
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 47
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "logcat"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "-v"

    aput-object v7, v0, v6

    const/4 v6, 0x2

    const-string v7, "time"

    aput-object v7, v0, v6

    .line 48
    .local v0, "args":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 49
    .local v3, "input":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 51
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    iget-boolean v6, p0, Lorg/videolan/vlc/util/Logcat;->mRun:Z

    if-nez v6, :cond_0

    .line 53
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-static {v3}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 67
    invoke-static {v1}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 69
    :goto_0
    return-void

    .line 54
    :cond_0
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/util/Logcat;->mProcess:Ljava/lang/Process;

    .line 55
    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lorg/videolan/vlc/util/Logcat;->mProcess:Ljava/lang/Process;

    .line 56
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .local v4, "input":Ljava/io/InputStreamReader;
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 58
    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 61
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 62
    iget-object v6, p0, Lorg/videolan/vlc/util/Logcat;->mCallback:Lorg/videolan/vlc/util/Logcat$Callback;

    invoke-interface {v6, v5}, Lorg/videolan/vlc/util/Logcat$Callback;->onLog(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 64
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 66
    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    :goto_2
    invoke-static {v3}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 67
    invoke-static {v1}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v6

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 64
    :catch_1
    move-exception v6

    goto :goto_2

    .line 66
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v5    # "line":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 67
    invoke-static {v2}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 68
    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    goto :goto_0

    .line 66
    .end local v5    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :goto_4
    invoke-static {v3}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    .line 67
    invoke-static {v1}, Lorg/videolan/vlc/util/Util;->close(Ljava/io/Closeable;)Z

    throw v6

    .line 66
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 64
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 57
    .end local v3    # "input":Ljava/io/InputStreamReader;
    .restart local v4    # "input":Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v6

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStreamReader;
    .restart local v3    # "input":Ljava/io/InputStreamReader;
    goto :goto_3
.end method

.method public declared-synchronized start(Lorg/videolan/vlc/util/Logcat$Callback;)V
    .locals 2
    .param p1, "callback"    # Lorg/videolan/vlc/util/Logcat$Callback;

    .prologue
    .line 76
    monitor-enter p0

    if-nez p1, :cond_0

    .line 77
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mProcess:Ljava/lang/Process;

    if-eqz v0, :cond_2

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "logcat is already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    iput-object p1, p0, Lorg/videolan/vlc/util/Logcat;->mCallback:Lorg/videolan/vlc/util/Logcat$Callback;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/util/Logcat;->mRun:Z

    .line 82
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mThread:Ljava/lang/Thread;

    .line 83
    iget-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/videolan/vlc/util/Logcat;->mRun:Z

    .line 91
    iget-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mProcess:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mThread:Ljava/lang/Thread;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/vlc/util/Logcat;->mCallback:Lorg/videolan/vlc/util/Logcat$Callback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method
