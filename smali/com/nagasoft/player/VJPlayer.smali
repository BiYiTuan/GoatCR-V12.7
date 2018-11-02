.class public Lcom/nagasoft/player/VJPlayer;
.super Ljava/lang/Object;
.source "VJPlayer.java"


# static fields
.field public static final PLAYER_NOTIFY_URL:I = 0x1011

.field protected static final TAG:Ljava/lang/String; = "NGPlayer"

.field public static gbload:Z


# instance fields
.field private mNativeListener:I

.field private mNativePlayer:I

.field private mStrVideoURL:Ljava/lang/String;

.field private mUCCallback:Lcom/nagasoft/player/UrlChanged;

.field private mVELCallback:Lcom/nagasoft/player/OnVJMSErrorListener;

.field private pHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    sput-boolean v2, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    .line 27
    :try_start_0
    const-string v1, "p2pcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 28
    const-string v1, "vjplayer_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x1

    sput-boolean v1, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    .line 30
    invoke-static {}, Lcom/nagasoft/player/VJPlayer;->native_init()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v0, "localUnsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 32
    .end local v0    # "localUnsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 34
    .restart local v0    # "localUnsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v2, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLibrary libvjplayer_jni error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nagasoft/player/UrlChanged;)V
    .locals 2
    .param p1, "paramUrlChanged"    # Lcom/nagasoft/player/UrlChanged;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/nagasoft/player/VJPlayer;->mNativeListener:I

    .line 17
    iput v0, p0, Lcom/nagasoft/player/VJPlayer;->mNativePlayer:I

    .line 19
    iput-object v1, p0, Lcom/nagasoft/player/VJPlayer;->mUCCallback:Lcom/nagasoft/player/UrlChanged;

    .line 20
    iput-object v1, p0, Lcom/nagasoft/player/VJPlayer;->mVELCallback:Lcom/nagasoft/player/OnVJMSErrorListener;

    .line 42
    sget-boolean v0, Lcom/nagasoft/player/VJPlayer;->gbload:Z

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/nagasoft/player/VJPlayer;->native_setup(Ljava/lang/Object;)V

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/nagasoft/player/VJPlayer;->mUCCallback:Lcom/nagasoft/player/UrlChanged;

    .line 46
    return-void
.end method

.method public static final native native_init()V
.end method


# virtual methods
.method public native _release()V
.end method

.method public native getPlayBackDuration()J
.end method

.method public getVideoURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nagasoft/player/VJPlayer;->mStrVideoURL:Ljava/lang/String;

    return-object v0
.end method

.method public native isLiveStream()Z
.end method

.method public native isPlayBackStream()Z
.end method

.method public native isVodFile()Z
.end method

.method public final native native_finalize()V
.end method

.method public final native native_setup(Ljava/lang/Object;)V
.end method

.method public notifyError(I)V
    .locals 2
    .param p1, "paramInt"    # I

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from native error is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/nagasoft/player/VJPlayer;->notifyUIError(I)V

    .line 73
    return-void
.end method

.method public notifyPlayURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vjms native string is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/nagasoft/player/VJPlayer;->mStrVideoURL:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, p1}, Lcom/nagasoft/player/VJPlayer;->notifyUI(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method protected notifyUI(Ljava/lang/String;)V
    .locals 2
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nagasoft/player/VJPlayer;->mUCCallback:Lcom/nagasoft/player/UrlChanged;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/nagasoft/player/VJPlayer;->mUCCallback:Lcom/nagasoft/player/UrlChanged;

    iget-object v1, p0, Lcom/nagasoft/player/VJPlayer;->pHandler:Landroid/os/Handler;

    invoke-interface {v0, p1, v1}, Lcom/nagasoft/player/UrlChanged;->onUrlChanged(Ljava/lang/String;Landroid/os/Handler;)V

    .line 87
    :cond_0
    return-void
.end method

.method protected notifyUIError(I)V
    .locals 1
    .param p1, "paramInt"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nagasoft/player/VJPlayer;->mVELCallback:Lcom/nagasoft/player/OnVJMSErrorListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/nagasoft/player/VJPlayer;->mVELCallback:Lcom/nagasoft/player/OnVJMSErrorListener;

    invoke-interface {v0, p1}, Lcom/nagasoft/player/OnVJMSErrorListener;->onVJMSError(I)V

    .line 94
    :cond_0
    return-void
.end method

.method public native seekPlayBack(J)Z
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Handler;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nagasoft/player/VJPlayer;->pHandler:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method public setOnVJMSErrorListener(Lcom/nagasoft/player/OnVJMSErrorListener;)V
    .locals 0
    .param p1, "paramOnVJMSErrorListener"    # Lcom/nagasoft/player/OnVJMSErrorListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nagasoft/player/VJPlayer;->mVELCallback:Lcom/nagasoft/player/OnVJMSErrorListener;

    .line 101
    return-void
.end method

.method public native setURL(Ljava/lang/String;)V
.end method

.method public native setVJMSBufferTimeout(I)V
.end method

.method public native start()Z
.end method

.method public native stop()V
.end method
