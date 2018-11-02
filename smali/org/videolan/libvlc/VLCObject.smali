.class abstract Lorg/videolan/libvlc/VLCObject;
.super Ljava/lang/Object;
.source "VLCObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/videolan/libvlc/VLCEvent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/videolan/libvlc/VLCEvent$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInstance:J

.field private mNativeRefCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/videolan/libvlc/VLCObject;, "Lorg/videolan/libvlc/VLCObject<TT;>;"
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    .line 31
    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/videolan/libvlc/VLCObject;->mInstance:J

    return-void
.end method

.method private declared-synchronized dispatchEventFromNative(IJF)V
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # F

    .prologue
    .line 116
    .local p0, "this":Lorg/videolan/libvlc/VLCObject;, "Lorg/videolan/libvlc/VLCObject<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/libvlc/VLCObject;->isReleased()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/videolan/libvlc/VLCObject;->onEventNative(IJF)Lorg/videolan/libvlc/VLCEvent;

    move-result-object v0

    .line 134
    .local v0, "event":Lorg/videolan/libvlc/VLCEvent;, "TT;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    new-instance v2, Lorg/videolan/libvlc/VLCObject$1EventRunnable;

    iget-object v3, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    invoke-direct {v2, p0, v3, v0}, Lorg/videolan/libvlc/VLCObject$1EventRunnable;-><init>(Lorg/videolan/libvlc/VLCObject;Lorg/videolan/libvlc/VLCEvent$Listener;Lorg/videolan/libvlc/VLCEvent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "event":Lorg/videolan/libvlc/VLCEvent;, "TT;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static dispatchEventFromWeakNative(Ljava/lang/Object;IJF)V
    .locals 2
    .param p0, "weak"    # Ljava/lang/Object;
    .param p1, "eventType"    # I
    .param p2, "arg1"    # J
    .param p4, "arg2"    # F

    .prologue
    .line 146
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "weak":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/VLCObject;

    .line 147
    .local v0, "obj":Lorg/videolan/libvlc/VLCObject;
    if-eqz v0, :cond_0

    .line 148
    invoke-direct {v0, p1, p2, p3, p4}, Lorg/videolan/libvlc/VLCObject;->dispatchEventFromNative(IJF)V

    .line 149
    :cond_0
    return-void
.end method

.method private getWeakReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    .local p0, "this":Lorg/videolan/libvlc/VLCObject;, "Lorg/videolan/libvlc/VLCObject<TT;>;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private native nativeDetachEvents()V
.end method


# virtual methods
.method public declared-synchronized isReleased()Z
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lorg/videolan/libvlc/VLCObject;, "Lorg/videolan/libvlc/VLCObject<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onEventNative(IJF)Lorg/videolan/libvlc/VLCEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJF)TT;"
        }
    .end annotation
.end method

.method protected abstract onReleaseNative()V
.end method

.method public final release()V
    .locals 3

    .prologue
    .line 61
    .local p0, "this":Lorg/videolan/libvlc/VLCObject;, "Lorg/videolan/libvlc/VLCObject<TT;>;"
    const/4 v0, -0x1

    .line 62
    .local v0, "refCount":I
    monitor-enter p0

    .line 63
    :try_start_0
    iget v2, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    if-nez v2, :cond_1

    .line 64
    monitor-exit p0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget v2, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    if-lez v2, :cond_2

    .line 66
    iget v2, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    add-int/lit8 v1, v2, -0x1

    iput v1, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    .end local v0    # "refCount":I
    .local v1, "refCount":I
    move v0, v1

    .line 69
    .end local v1    # "refCount":I
    .restart local v0    # "refCount":I
    :cond_2
    if-nez v0, :cond_3

    .line 70
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/videolan/libvlc/VLCObject;->setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V

    .line 71
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lorg/videolan/libvlc/VLCObject;->nativeDetachEvents()V

    .line 75
    monitor-enter p0

    .line 76
    :try_start_1
    invoke-virtual {p0}, Lorg/videolan/libvlc/VLCObject;->onReleaseNative()V

    .line 77
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 71
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public final declared-synchronized retain()Z
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lorg/videolan/libvlc/VLCObject;, "Lorg/videolan/libvlc/VLCObject<TT;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    if-lez v0, :cond_0

    .line 47
    iget v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/videolan/libvlc/VLCObject;->mNativeRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v0, 0x1

    .line 50
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setEventListener(Lorg/videolan/libvlc/VLCEvent$Listener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/videolan/libvlc/VLCEvent$Listener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/videolan/libvlc/VLCObject;, "Lorg/videolan/libvlc/VLCObject<TT;>;"
    .local p1, "listener":Lorg/videolan/libvlc/VLCEvent$Listener;, "Lorg/videolan/libvlc/VLCEvent$Listener<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 90
    :cond_0
    iput-object p1, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    .line 91
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mEventListener:Lorg/videolan/libvlc/VLCEvent$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/videolan/libvlc/VLCObject;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
