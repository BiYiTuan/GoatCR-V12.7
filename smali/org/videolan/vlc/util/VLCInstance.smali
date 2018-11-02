.class public Lorg/videolan/vlc/util/VLCInstance;
.super Ljava/lang/Object;
.source "VLCInstance.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/UiTools/VLCInstance"

.field private static sLibVLC:Lorg/videolan/libvlc/LibVLC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lorg/videolan/vlc/util/VLCInstance;->sLibVLC:Lorg/videolan/libvlc/LibVLC;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lorg/videolan/libvlc/LibVLC;
    .locals 3
    .param p0, "getApplicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 47
    const-class v1, Lorg/videolan/vlc/util/VLCInstance;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/videolan/vlc/util/VLCInstance;->sLibVLC:Lorg/videolan/libvlc/LibVLC;

    if-nez v0, :cond_1

    .line 51
    invoke-static {p0}, Lorg/videolan/libvlc/util/VLCUtil;->hasCompatibleCPU(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const-string v0, "VLC/UiTools/VLCInstance"

    invoke-static {}, Lorg/videolan/libvlc/util/VLCUtil;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    invoke-static {p0}, Lorg/videolan/vlc/util/VLCOptions;->getLibOptions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    sput-object v0, Lorg/videolan/vlc/util/VLCInstance;->sLibVLC:Lorg/videolan/libvlc/LibVLC;

    .line 59
    :cond_1
    sget-object v0, Lorg/videolan/vlc/util/VLCInstance;->sLibVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized restart(Landroid/content/Context;)V
    .locals 3
    .param p0, "getApplicationContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 63
    const-class v1, Lorg/videolan/vlc/util/VLCInstance;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/videolan/vlc/util/VLCInstance;->sLibVLC:Lorg/videolan/libvlc/LibVLC;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lorg/videolan/vlc/util/VLCInstance;->sLibVLC:Lorg/videolan/libvlc/LibVLC;

    invoke-virtual {v0}, Lorg/videolan/libvlc/LibVLC;->release()V

    .line 65
    new-instance v0, Lorg/videolan/libvlc/LibVLC;

    invoke-static {p0}, Lorg/videolan/vlc/util/VLCOptions;->getLibOptions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lorg/videolan/libvlc/LibVLC;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    sput-object v0, Lorg/videolan/vlc/util/VLCInstance;->sLibVLC:Lorg/videolan/libvlc/LibVLC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit v1

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized testCompatibleCPU(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-class v1, Lorg/videolan/vlc/util/VLCInstance;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/videolan/vlc/util/VLCInstance;->sLibVLC:Lorg/videolan/libvlc/LibVLC;

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/videolan/libvlc/util/VLCUtil;->hasCompatibleCPU(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    instance-of v0, p0, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
