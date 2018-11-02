.class public Lorg/videolan/libvlc/AWindow;
.super Ljava/lang/Object;
.source "AWindow.java"

# interfaces
.implements Lorg/videolan/libvlc/IVLCVout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;,
        Lorg/videolan/libvlc/AWindow$SurfaceHelper;,
        Lorg/videolan/libvlc/AWindow$SurfaceCallback;
    }
.end annotation


# static fields
.field private static final ID_MAX:I = 0x2

.field private static final ID_SUBTITLES:I = 0x1

.field private static final ID_VIDEO:I = 0x0

.field private static final SURFACE_STATE_ATTACHED:I = 0x1

.field private static final SURFACE_STATE_INIT:I = 0x0

.field private static final SURFACE_STATE_READY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AWindow"


# instance fields
.field private final mAWindowNativeHandler:Lorg/videolan/libvlc/AWindowNativeHandler;

.field private final mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

.field private mCallbackNativeHandle:J

.field private final mHandler:Landroid/os/Handler;

.field private mIVLCVoutCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/videolan/libvlc/IVLCVout$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mMouseAction:I

.field private mMouseButton:I

.field private mMouseX:I

.field private mMouseY:I

.field private final mNativeLock:Ljava/lang/Object;

.field private final mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

.field private final mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

.field private final mSurfaces:[Landroid/view/Surface;

.field private final mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/AWindow$SurfaceCallback;)V
    .locals 7
    .param p1, "surfaceCallback"    # Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mHandler:Landroid/os/Handler;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    .line 204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    .line 205
    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mMouseAction:I

    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mMouseButton:I

    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mMouseX:I

    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mMouseY:I

    .line 206
    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mWindowWidth:I

    iput v2, p0, Lorg/videolan/libvlc/AWindow;->mWindowHeight:I

    .line 423
    new-instance v0, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    invoke-direct {v0, v3}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;-><init>(Lorg/videolan/libvlc/AWindow$1;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    .line 440
    new-instance v0, Lorg/videolan/libvlc/AWindow$1;

    invoke-direct {v0, p0}, Lorg/videolan/libvlc/AWindow$1;-><init>(Lorg/videolan/libvlc/AWindow;)V

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mAWindowNativeHandler:Lorg/videolan/libvlc/AWindowNativeHandler;

    .line 209
    iput-object p1, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    .line 210
    new-array v0, v6, [Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    .line 211
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aput-object v3, v0, v4

    .line 212
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aput-object v3, v0, v5

    .line 213
    new-array v0, v6, [Landroid/view/Surface;

    iput-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    .line 214
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aput-object v3, v0, v4

    .line 215
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aput-object v3, v0, v5

    .line 216
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/libvlc/AWindow;I)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/videolan/libvlc/AWindow;->getNativeSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/Surface;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/videolan/libvlc/AWindow;->setNativeSurface(ILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/videolan/libvlc/AWindow;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/videolan/libvlc/AWindow;)J
    .locals 2
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget-wide v0, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    return-wide v0
.end method

.method static synthetic access$1302(Lorg/videolan/libvlc/AWindow;J)J
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p1, "x1"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    return-wide p1
.end method

.method static synthetic access$1400(Lorg/videolan/libvlc/AWindow;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mMouseAction:I

    return v0
.end method

.method static synthetic access$1402(Lorg/videolan/libvlc/AWindow;I)I
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mMouseAction:I

    return p1
.end method

.method static synthetic access$1500(Lorg/videolan/libvlc/AWindow;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mMouseButton:I

    return v0
.end method

.method static synthetic access$1502(Lorg/videolan/libvlc/AWindow;I)I
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mMouseButton:I

    return p1
.end method

.method static synthetic access$1600(Lorg/videolan/libvlc/AWindow;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mMouseX:I

    return v0
.end method

.method static synthetic access$1602(Lorg/videolan/libvlc/AWindow;I)I
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mMouseX:I

    return p1
.end method

.method static synthetic access$1700(Lorg/videolan/libvlc/AWindow;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mMouseY:I

    return v0
.end method

.method static synthetic access$1702(Lorg/videolan/libvlc/AWindow;I)I
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mMouseY:I

    return p1
.end method

.method static synthetic access$1800(Lorg/videolan/libvlc/AWindow;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mWindowWidth:I

    return v0
.end method

.method static synthetic access$1802(Lorg/videolan/libvlc/AWindow;I)I
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mWindowWidth:I

    return p1
.end method

.method static synthetic access$1900(Lorg/videolan/libvlc/AWindow;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget v0, p0, Lorg/videolan/libvlc/AWindow;->mWindowHeight:I

    return v0
.end method

.method static synthetic access$1902(Lorg/videolan/libvlc/AWindow;I)I
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mWindowHeight:I

    return p1
.end method

.method static synthetic access$200(Lorg/videolan/libvlc/AWindow;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow;->onSurfaceCreated()V

    return-void
.end method

.method static synthetic access$2000(Lorg/videolan/libvlc/AWindow;)Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/videolan/libvlc/AWindow;)[Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/videolan/libvlc/AWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/videolan/libvlc/AWindow;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lorg/videolan/libvlc/AWindow;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/libvlc/AWindow;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow;->onSurfaceDestroyed()V

    return-void
.end method

.method private ensureInitState()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set view when already attached. Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 221
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSurfaces[ID_VIDEO]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSurfaces[ID_SUBTITLES]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    return-void
.end method

.method private getNativeSurface(I)Landroid/view/Surface;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 414
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aget-object v0, v0, p1

    monitor-exit v1

    return-object v0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onSurfaceCreated()V
    .locals 6
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 355
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v5, :cond_0

    .line 356
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid state"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 358
    :cond_0
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 359
    .local v2, "videoHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v1, v3, v5

    .line 360
    .local v1, "subtitlesHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-nez v2, :cond_1

    .line 361
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "videoHelper shouldn\'t be null here"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 363
    :cond_1
    invoke-virtual {v2}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->isReady()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->isReady()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 364
    :cond_2
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 365
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/IVLCVout$Callback;

    .line 366
    .local v0, "cb":Lorg/videolan/libvlc/IVLCVout$Callback;
    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout$Callback;->onSurfacesCreated(Lorg/videolan/libvlc/IVLCVout;)V

    goto :goto_0

    .line 367
    .end local v0    # "cb":Lorg/videolan/libvlc/IVLCVout$Callback;
    :cond_3
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    if-eqz v3, :cond_4

    .line 368
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    invoke-interface {v3, p0}, Lorg/videolan/libvlc/AWindow$SurfaceCallback;->onSurfacesCreated(Lorg/videolan/libvlc/AWindow;)V

    .line 370
    :cond_4
    return-void
.end method

.method private onSurfaceDestroyed()V
    .locals 0
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Lorg/videolan/libvlc/AWindow;->detachViews()V

    .line 375
    return-void
.end method

.method private setNativeSurface(ILandroid/view/Surface;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 408
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaces:[Landroid/view/Surface;

    aput-object p2, v0, p1

    .line 410
    monitor-exit v1

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 251
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow;->ensureInitState()V

    .line 252
    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "surface is not attached and holder is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v6, v0, p1

    .line 255
    .local v6, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v6, :cond_1

    .line 256
    invoke-virtual {v6}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->release()V

    .line 258
    :cond_1
    iget-object v7, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    new-instance v0, Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/Surface;Landroid/view/SurfaceHolder;Lorg/videolan/libvlc/AWindow$1;)V

    aput-object v0, v7, p1

    .line 259
    return-void
.end method

.method private setView(ILandroid/view/SurfaceView;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "view"    # Landroid/view/SurfaceView;

    .prologue
    .line 227
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow;->ensureInitState()V

    .line 228
    if-nez p2, :cond_0

    .line 229
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "view is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v0, v1, p1

    .line 231
    .local v0, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->release()V

    .line 234
    :cond_1
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    new-instance v2, Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/SurfaceView;Lorg/videolan/libvlc/AWindow$1;)V

    aput-object v2, v1, p1

    .line 235
    return-void
.end method

.method private setView(ILandroid/view/TextureView;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "view"    # Landroid/view/TextureView;

    .prologue
    .line 238
    invoke-static {}, Lorg/videolan/libvlc/util/AndroidUtil;->isICSOrLater()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "TextureView not implemented in this android version"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 240
    :cond_0
    invoke-direct {p0}, Lorg/videolan/libvlc/AWindow;->ensureInitState()V

    .line 241
    if-nez p2, :cond_1

    .line 242
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "view is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_1
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v0, v1, p1

    .line 244
    .local v0, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v0}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->release()V

    .line 247
    :cond_2
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    new-instance v2, Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;-><init>(Lorg/videolan/libvlc/AWindow;ILandroid/view/TextureView;Lorg/videolan/libvlc/AWindow$1;)V

    aput-object v2, v1, p1

    .line 248
    return-void
.end method


# virtual methods
.method public addCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/videolan/libvlc/IVLCVout$Callback;

    .prologue
    .line 427
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    return-void
.end method

.method protected areSurfacesWaiting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 378
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areViewsAttached()Z
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public attachViews()V
    .locals 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 310
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 311
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "already attached or video view not configured"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_1
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 313
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    monitor-enter v3

    .line 314
    :try_start_0
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$902(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)Z

    .line 315
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$1002(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)Z

    .line 316
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    .line 318
    iget-object v2, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v1, v2, v0

    .line 319
    .local v1, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {v1}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->attach()V

    .line 317
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "id":I
    .end local v1    # "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 322
    .restart local v0    # "id":I
    :cond_3
    return-void
.end method

.method public detachViews()V
    .locals 7
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 327
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-nez v3, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfacesState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 330
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 331
    iget-object v4, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    monitor-enter v4

    .line 332
    :try_start_0
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;->access$1002(Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;Z)Z

    .line 333
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mBuffersGeometryCond:Lorg/videolan/libvlc/AWindow$BuffersGeometryCond;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 334
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    const/4 v1, 0x0

    .local v1, "id":I
    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_3

    .line 336
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aget-object v2, v3, v1

    .line 337
    .local v2, "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    if-eqz v2, :cond_2

    .line 338
    invoke-virtual {v2}, Lorg/videolan/libvlc/AWindow$SurfaceHelper;->release()V

    .line 339
    :cond_2
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceHelpers:[Lorg/videolan/libvlc/AWindow$SurfaceHelper;

    aput-object v6, v3, v1

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 334
    .end local v1    # "id":I
    .end local v2    # "surfaceHelper":Lorg/videolan/libvlc/AWindow$SurfaceHelper;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 341
    .restart local v1    # "id":I
    :cond_3
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/libvlc/IVLCVout$Callback;

    .line 342
    .local v0, "cb":Lorg/videolan/libvlc/IVLCVout$Callback;
    invoke-interface {v0, p0}, Lorg/videolan/libvlc/IVLCVout$Callback;->onSurfacesDestroyed(Lorg/videolan/libvlc/IVLCVout;)V

    goto :goto_2

    .line 343
    .end local v0    # "cb":Lorg/videolan/libvlc/IVLCVout$Callback;
    :cond_4
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    if-eqz v3, :cond_0

    .line 344
    iget-object v3, p0, Lorg/videolan/libvlc/AWindow;->mSurfaceCallback:Lorg/videolan/libvlc/AWindow$SurfaceCallback;

    invoke-interface {v3, p0}, Lorg/videolan/libvlc/AWindow$SurfaceCallback;->onSurfacesDestroyed(Lorg/videolan/libvlc/AWindow;)V

    goto :goto_0
.end method

.method public getNativeHandler()Lorg/videolan/libvlc/AWindowNativeHandler;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mAWindowNativeHandler:Lorg/videolan/libvlc/AWindowNativeHandler;

    return-object v0
.end method

.method public removeCallback(Lorg/videolan/libvlc/IVLCVout$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/videolan/libvlc/IVLCVout$Callback;

    .prologue
    .line 433
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mIVLCVoutCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method public sendMouseEvent(IIII)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "button"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 383
    iget-object v8, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    monitor-enter v8

    .line 384
    :try_start_0
    iget-wide v0, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mAWindowNativeHandler:Lorg/videolan/libvlc/AWindowNativeHandler;

    iget-wide v2, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/videolan/libvlc/AWindowNativeHandler;->nativeOnMouseEvent(JIIII)V

    .line 392
    :goto_0
    monitor-exit v8

    .line 393
    return-void

    .line 387
    :cond_0
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mMouseAction:I

    .line 388
    iput p2, p0, Lorg/videolan/libvlc/AWindow;->mMouseButton:I

    .line 389
    iput p3, p0, Lorg/videolan/libvlc/AWindow;->mMouseX:I

    .line 390
    iput p4, p0, Lorg/videolan/libvlc/AWindow;->mMouseY:I

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSubtitlesSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "subtitlesSurfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x1

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/videolan/libvlc/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 305
    return-void
.end method

.method public setSubtitlesSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "subtitlesSurface"    # Landroid/view/Surface;
    .param p2, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 298
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/videolan/libvlc/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 299
    return-void
.end method

.method public setSubtitlesView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "subtitlesSurfaceView"    # Landroid/view/SurfaceView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/videolan/libvlc/AWindow;->setView(ILandroid/view/SurfaceView;)V

    .line 288
    return-void
.end method

.method public setSubtitlesView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "subtitlesTextureView"    # Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/videolan/libvlc/AWindow;->setView(ILandroid/view/TextureView;)V

    .line 294
    return-void
.end method

.method public setVideoSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "videoSurfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/videolan/libvlc/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 282
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "videoSurface"    # Landroid/view/Surface;
    .param p2, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/videolan/libvlc/AWindow;->setSurface(ILandroid/view/Surface;Landroid/view/SurfaceHolder;)V

    .line 276
    return-void
.end method

.method public setVideoView(Landroid/view/SurfaceView;)V
    .locals 1
    .param p1, "videoSurfaceView"    # Landroid/view/SurfaceView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/videolan/libvlc/AWindow;->setView(ILandroid/view/SurfaceView;)V

    .line 265
    return-void
.end method

.method public setVideoView(Landroid/view/TextureView;)V
    .locals 1
    .param p1, "videoTextureView"    # Landroid/view/TextureView;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/videolan/libvlc/AWindow;->setView(ILandroid/view/TextureView;)V

    .line 271
    return-void
.end method

.method public setWindowSize(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 397
    iget-object v1, p0, Lorg/videolan/libvlc/AWindow;->mNativeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 398
    :try_start_0
    iget-wide v2, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/videolan/libvlc/AWindow;->mAWindowNativeHandler:Lorg/videolan/libvlc/AWindowNativeHandler;

    iget-wide v2, p0, Lorg/videolan/libvlc/AWindow;->mCallbackNativeHandle:J

    invoke-virtual {v0, v2, v3, p1, p2}, Lorg/videolan/libvlc/AWindowNativeHandler;->nativeOnWindowSize(JII)V

    .line 404
    :goto_0
    monitor-exit v1

    .line 405
    return-void

    .line 401
    :cond_0
    iput p1, p0, Lorg/videolan/libvlc/AWindow;->mWindowWidth:I

    .line 402
    iput p2, p0, Lorg/videolan/libvlc/AWindow;->mWindowHeight:I

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
