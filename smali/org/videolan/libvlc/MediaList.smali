.class public Lorg/videolan/libvlc/MediaList;
.super Lorg/videolan/libvlc/VLCObject;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/MediaList$EventListener;,
        Lorg/videolan/libvlc/MediaList$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/libvlc/VLCObject",
        "<",
        "Lorg/videolan/libvlc/MediaList$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LibVLC/MediaList"


# instance fields
.field private mCount:I

.field private mLocked:Z

.field private final mMediaArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/videolan/libvlc/Media;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/LibVLC;)V
    .locals 2
    .param p1, "libVLC"    # Lorg/videolan/libvlc/LibVLC;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 55
    iput v1, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 57
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 72
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaList;->nativeNewFromLibVlc(Lorg/videolan/libvlc/LibVLC;)V

    .line 73
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->init()V

    .line 74
    return-void
.end method

.method protected constructor <init>(Lorg/videolan/libvlc/Media;)V
    .locals 2
    .param p1, "m"    # Lorg/videolan/libvlc/Media;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 55
    iput v1, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 57
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 90
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaList;->nativeNewFromMedia(Lorg/videolan/libvlc/Media;)V

    .line 91
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->init()V

    .line 92
    return-void
.end method

.method protected constructor <init>(Lorg/videolan/libvlc/MediaDiscoverer;)V
    .locals 2
    .param p1, "md"    # Lorg/videolan/libvlc/MediaDiscoverer;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;-><init>()V

    .line 55
    iput v1, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    .line 57
    iput-boolean v1, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 81
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/MediaList;->nativeNewFromMediaDiscoverer(Lorg/videolan/libvlc/MediaDiscoverer;)V

    .line 82
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->init()V

    .line 83
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->lock()V

    .line 61
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeGetCount()I

    move-result v1

    iput v1, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    new-instance v2, Lorg/videolan/libvlc/Media;

    invoke-direct {v2, p0, v0}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/MediaList;I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->unlock()V

    .line 65
    return-void
.end method

.method private declared-synchronized insertMediaFromEvent(I)Lorg/videolan/libvlc/Media;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 97
    iget v2, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 98
    iget-object v2, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 99
    :cond_0
    new-instance v1, Lorg/videolan/libvlc/Media;

    invoke-direct {v1, p0, p1}, Lorg/videolan/libvlc/Media;-><init>(Lorg/videolan/libvlc/MediaList;I)V

    .line 100
    .local v1, "media":Lorg/videolan/libvlc/Media;
    iget-object v2, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-object v1

    .line 95
    .end local v0    # "i":I
    .end local v1    # "media":Lorg/videolan/libvlc/Media;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized lock()V
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 186
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeLock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    monitor-exit p0

    return-void
.end method

.method private native nativeGetCount()I
.end method

.method private native nativeLock()V
.end method

.method private native nativeNewFromLibVlc(Lorg/videolan/libvlc/LibVLC;)V
.end method

.method private native nativeNewFromMedia(Lorg/videolan/libvlc/Media;)V
.end method

.method private native nativeNewFromMediaDiscoverer(Lorg/videolan/libvlc/MediaDiscoverer;)V
.end method

.method private native nativeRelease()V
.end method

.method private native nativeUnlock()V
.end method

.method private declared-synchronized removeMediaFromEvent(I)Lorg/videolan/libvlc/Media;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    .line 106
    iget-object v2, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 107
    .local v1, "media":Lorg/videolan/libvlc/Media;
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->release()V

    .line 109
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/videolan/libvlc/MediaList;->mCount:I

    if-ge v0, v2, :cond_1

    .line 110
    iget-object v2, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    iget-object v3, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    monitor-exit p0

    return-object v1

    .line 105
    .end local v0    # "i":I
    .end local v1    # "media":Lorg/videolan/libvlc/Media;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized unlock()V
    .locals 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 193
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeUnlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized getCount()I
    .locals 1

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/MediaList;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediaAt(I)Lorg/videolan/libvlc/Media;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 164
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/MediaList;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 166
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/Media;

    .line 167
    .local v0, "media":Lorg/videolan/libvlc/Media;
    invoke-virtual {v0}, Lorg/videolan/libvlc/Media;->retain()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    monitor-exit p0

    return-object v0
.end method

.method protected declared-synchronized isLocked()Z
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic isReleased()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized onEventNative(IJF)Lorg/videolan/libvlc/MediaList$Event;
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # F

    .prologue
    const/4 v4, -0x1

    .line 121
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    if-eqz v3, :cond_0

    .line 122
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "already locked from event callback"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 123
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z

    .line 124
    const/4 v0, 0x0

    .line 127
    .local v0, "event":Lorg/videolan/libvlc/MediaList$Event;
    packed-switch p1, :pswitch_data_0

    .line 146
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/videolan/libvlc/MediaList;->mLocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    monitor-exit p0

    return-object v0

    .line 129
    :pswitch_1
    long-to-int v1, p2

    .line 130
    .local v1, "index":I
    if-eq v1, v4, :cond_1

    .line 131
    :try_start_2
    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MediaList;->insertMediaFromEvent(I)Lorg/videolan/libvlc/Media;

    move-result-object v2

    .line 132
    .local v2, "media":Lorg/videolan/libvlc/Media;
    new-instance v0, Lorg/videolan/libvlc/MediaList$Event;

    .end local v0    # "event":Lorg/videolan/libvlc/MediaList$Event;
    invoke-direct {v0, p1, v2, v1}, Lorg/videolan/libvlc/MediaList$Event;-><init>(ILorg/videolan/libvlc/Media;I)V

    .line 133
    .restart local v0    # "event":Lorg/videolan/libvlc/MediaList$Event;
    goto :goto_0

    .line 136
    .end local v1    # "index":I
    .end local v2    # "media":Lorg/videolan/libvlc/Media;
    :pswitch_2
    long-to-int v1, p2

    .line 137
    .restart local v1    # "index":I
    if-eq v1, v4, :cond_1

    .line 138
    invoke-direct {p0, v1}, Lorg/videolan/libvlc/MediaList;->removeMediaFromEvent(I)Lorg/videolan/libvlc/Media;

    move-result-object v2

    .line 139
    .restart local v2    # "media":Lorg/videolan/libvlc/Media;
    new-instance v0, Lorg/videolan/libvlc/MediaList$Event;

    .end local v0    # "event":Lorg/videolan/libvlc/MediaList$Event;
    invoke-direct {v0, p1, v2, v1}, Lorg/videolan/libvlc/MediaList$Event;-><init>(ILorg/videolan/libvlc/Media;I)V

    .line 140
    .restart local v0    # "event":Lorg/videolan/libvlc/MediaList$Event;
    goto :goto_0

    .line 143
    .end local v1    # "index":I
    .end local v2    # "media":Lorg/videolan/libvlc/Media;
    :pswitch_3
    new-instance v0, Lorg/videolan/libvlc/MediaList$Event;

    .end local v0    # "event":Lorg/videolan/libvlc/MediaList$Event;
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, p1, v3, v4}, Lorg/videolan/libvlc/MediaList$Event;-><init>(ILorg/videolan/libvlc/Media;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0    # "event":Lorg/videolan/libvlc/MediaList$Event;
    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onEventNative(IJF)Lorg/videolan/libvlc/VLCEvent;
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/MediaList;->onEventNative(IJF)Lorg/videolan/libvlc/MediaList$Event;

    move-result-object v0

    return-object v0
.end method

.method public onReleaseNative()V
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 174
    iget-object v2, p0, Lorg/videolan/libvlc/MediaList;->mMediaArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/libvlc/Media;

    .line 175
    .local v1, "media":Lorg/videolan/libvlc/Media;
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Lorg/videolan/libvlc/Media;->release()V

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "media":Lorg/videolan/libvlc/Media;
    :cond_1
    invoke-direct {p0}, Lorg/videolan/libvlc/MediaList;->nativeRelease()V

    .line 180
    return-void
.end method

.method public setEventListener(Lorg/videolan/libvlc/MediaList$EventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/videolan/libvlc/MediaList$EventListener;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V

    .line 117
    return-void
.end method
