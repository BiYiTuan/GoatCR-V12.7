.class public Lorg/videolan/libvlc/MediaDiscoverer;
.super Lorg/videolan/libvlc/VLCObject;
.source "MediaDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaDiscoverer$EventListener;,
        Lorg/videolan/libvlc/MediaDiscoverer$Description;,
        Lorg/videolan/libvlc/MediaDiscoverer$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject",
        "<",
        "Lorg/videolan/libvlc/MediaDiscoverer$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/MediaDiscoverer"


# instance fields
.field private mMediaList:Lorg/videolan/libvlc/MediaList;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
    .locals 1
    .param p1, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeNew(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private static createDescriptionFromNative(Ljava/lang/String;Ljava/lang/String;I)Lorg/videolan/libvlc/MediaDiscoverer$Description;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "longName"    # Ljava/lang/String;
    .param p2, "category"    # I

    .prologue
    .line 65
    new-instance v0, Lorg/videolan/libvlc/MediaDiscoverer$Description;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/videolan/libvlc/MediaDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/videolan/libvlc/MediaDiscoverer$1;)V

    return-object v0
.end method

.method public static list(Lorg/videolan/libvlc/LibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;
    .locals 1
    .param p0, "libVLC"    # Lorg/videolan/libvlc/LibVLC;
    .param p1, "category"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 151
    invoke-static {p0, p1}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeList(Lorg/videolan/libvlc/LibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeList(Lorg/videolan/libvlc/LibVLC;I)[Lorg/videolan/libvlc/MediaDiscoverer$Description;
.end method

.method private native nativeNew(Lorg/videolan/libvlc/LibVLC;Ljava/lang/String;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeStart()Z
.end method

.method private native nativeStop()V
.end method


# virtual methods
.method public getMediaList()Lorg/videolan/libvlc/MediaList;
    .locals 2

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v1, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->retain()Z

    .line 127
    iget-object v1, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    monitor-exit p0

    .line 134
    :goto_0
    return-object v1

    .line 129
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    new-instance v0, Lorg/videolan/libvlc/MediaList;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/MediaList;-><init>(Lorg/videolan/libvlc/MediaDiscoverer;)V

    .line 131
    .local v0, "mediaList":Lorg/videolan/libvlc/MediaList;
    monitor-enter p0

    .line 132
    :try_start_1
    iput-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    .line 133
    iget-object v1, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v1}, Lorg/videolan/libvlc/MediaList;->retain()Z

    .line 134
    iget-object v1, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    monitor-exit p0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 129
    .end local v0    # "mediaList":Lorg/videolan/libvlc/MediaList;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected onEventNative(IJF)Lorg/videolan/libvlc/MediaDiscoverer$Event;
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # F

    .prologue
    .line 109
    packed-switch p1, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 112
    :pswitch_0
    new-instance v0, Lorg/videolan/libvlc/MediaDiscoverer$Event;

    invoke-direct {v0, p1}, Lorg/videolan/libvlc/MediaDiscoverer$Event;-><init>(I)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onEventNative(IJF)Lorg/videolan/libvlc/VLCEvent;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/MediaDiscoverer;->onEventNative(IJF)Lorg/videolan/libvlc/MediaDiscoverer$Event;

    move-result-object v0

    return-object v0
.end method

.method protected onReleaseNative()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/videolan/libvlc/MediaDiscoverer;->mMediaList:Lorg/videolan/libvlc/MediaList;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaList;->release()V

    .line 142
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeRelease()V

    .line 143
    return-void
.end method

.method public setEventListener(Lorg/videolan/libvlc/MediaDiscoverer$EventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/MediaDiscoverer$EventListener;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V

    .line 105
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaDiscoverer is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeStart()Z

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MediaDiscoverer is released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaDiscoverer;->nativeStop()V

    .line 101
    return-void
.end method
