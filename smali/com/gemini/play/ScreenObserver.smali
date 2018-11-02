.class public Lcom/gemini/play/ScreenObserver;
.super Ljava/lang/Object;
.source "ScreenObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/ScreenObserver$ScreenStateListener;,
        Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenReceiver:Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;

.field private mScreenStateListener:Lcom/gemini/play/ScreenObserver$ScreenStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/gemini/play/ScreenObserver;->mContext:Landroid/content/Context;

    .line 18
    new-instance v0, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;-><init>(Lcom/gemini/play/ScreenObserver;Lcom/gemini/play/ScreenObserver$1;)V

    iput-object v0, p0, Lcom/gemini/play/ScreenObserver;->mScreenReceiver:Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;

    .line 19
    return-void
.end method

.method static synthetic access$100(Lcom/gemini/play/ScreenObserver;)Lcom/gemini/play/ScreenObserver$ScreenStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/ScreenObserver;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/gemini/play/ScreenObserver;->mScreenStateListener:Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    return-object v0
.end method

.method private getScreenState()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v1, p0, Lcom/gemini/play/ScreenObserver;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/gemini/play/ScreenObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 38
    .local v0, "manager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    iget-object v1, p0, Lcom/gemini/play/ScreenObserver;->mScreenStateListener:Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/gemini/play/ScreenObserver;->mScreenStateListener:Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    invoke-interface {v1}, Lcom/gemini/play/ScreenObserver$ScreenStateListener;->onScreenOn()V

    goto :goto_0

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/gemini/play/ScreenObserver;->mScreenStateListener:Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/gemini/play/ScreenObserver;->mScreenStateListener:Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    invoke-interface {v1}, Lcom/gemini/play/ScreenObserver$ScreenStateListener;->onScreenOff()V

    goto :goto_0
.end method

.method private registerListener()V
    .locals 3

    .prologue
    .line 50
    iget-object v1, p0, Lcom/gemini/play/ScreenObserver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/gemini/play/ScreenObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/gemini/play/ScreenObserver;->mScreenReceiver:Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unregisterListener()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gemini/play/ScreenObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/gemini/play/ScreenObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/gemini/play/ScreenObserver;->mScreenReceiver:Lcom/gemini/play/ScreenObserver$ScreenBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public shutdownObserver()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/gemini/play/ScreenObserver;->unregisterListener()V

    .line 29
    return-void
.end method

.method public startObserver(Lcom/gemini/play/ScreenObserver$ScreenStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/gemini/play/ScreenObserver;->mScreenStateListener:Lcom/gemini/play/ScreenObserver$ScreenStateListener;

    .line 23
    invoke-direct {p0}, Lcom/gemini/play/ScreenObserver;->registerListener()V

    .line 24
    invoke-direct {p0}, Lcom/gemini/play/ScreenObserver;->getScreenState()V

    .line 25
    return-void
.end method
