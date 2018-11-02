.class public Lcom/memo/cable/MemoDeviceService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "gggl"


# instance fields
.field private mControlPoint:Lorg/cybergarage/upnp/c;

.field private mSearchThread:Lcom/memo/cable/SearchThread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateReceiver:Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private init()V
    .locals 2

    const-string v0, "###########Device Service init #####"

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    new-instance v0, Lorg/cybergarage/upnp/c;

    invoke-direct {v0}, Lorg/cybergarage/upnp/c;-><init>()V

    iput-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mControlPoint:Lorg/cybergarage/upnp/c;

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mControlPoint:Lorg/cybergarage/upnp/c;

    invoke-static {v0}, Lcom/memo/sdk/MemoTVCastSDK;->setControlPoint(Lorg/cybergarage/upnp/c;)V

    new-instance v0, Lcom/memo/cable/SearchThread;

    iget-object v1, p0, Lcom/memo/cable/MemoDeviceService;->mControlPoint:Lorg/cybergarage/upnp/c;

    invoke-direct {v0, v1}, Lcom/memo/cable/SearchThread;-><init>(Lorg/cybergarage/upnp/c;)V

    iput-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mControlPoint:Lorg/cybergarage/upnp/c;

    new-instance v1, Lcom/memo/cable/MemoDeviceService$1;

    invoke-direct {v1, p0}, Lcom/memo/cable/MemoDeviceService$1;-><init>(Lcom/memo/cable/MemoDeviceService;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/device/j;)V

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->startDeviceApWork()V

    return-void
.end method

.method private registerWifiStateReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mWifiStateReceiver:Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;-><init>(Lcom/memo/cable/MemoDeviceService;Lcom/memo/cable/MemoDeviceService$1;)V

    iput-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mWifiStateReceiver:Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/memo/cable/MemoDeviceService;->mWifiStateReceiver:Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/memo/cable/MemoDeviceService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private startThread()V
    .locals 2

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    if-eqz v0, :cond_0

    const-string v0, "thread is not null"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/memo/cable/SearchThread;->setLongInternal(Z)V

    :goto_0
    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    invoke-virtual {v0}, Lcom/memo/cable/SearchThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "thread is alive"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    invoke-virtual {v0}, Lcom/memo/cable/SearchThread;->awake()V

    :goto_1
    const-string v0, "###########Device Service startThread #####"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "thread is null, create a new thread"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/memo/cable/SearchThread;

    iget-object v1, p0, Lcom/memo/cable/MemoDeviceService;->mControlPoint:Lorg/cybergarage/upnp/c;

    invoke-direct {v0, v1}, Lcom/memo/cable/SearchThread;-><init>(Lorg/cybergarage/upnp/c;)V

    iput-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    goto :goto_0

    :cond_1
    const-string v0, "start the thread"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    invoke-virtual {v0}, Lcom/memo/cable/SearchThread;->start()V

    goto :goto_1
.end method

.method private stopThread()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    invoke-virtual {v0}, Lcom/memo/cable/SearchThread;->stopThread()V

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mControlPoint:Lorg/cybergarage/upnp/c;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/c;->l()Z

    iput-object v1, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    iput-object v1, p0, Lcom/memo/cable/MemoDeviceService;->mControlPoint:Lorg/cybergarage/upnp/c;

    const-string v0, "gggl"

    const-string v1, "stop Device service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "###########Device Service stop Device service#####"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private unInit()V
    .locals 2

    const-string v0, "gggl"

    const-string v1, "unInit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "###########Device Service unInit #####"

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/memo/cable/MemoDeviceService;->stopThread()V

    invoke-direct {p0}, Lcom/memo/cable/MemoDeviceService;->unregisterWifiStateReceiver()V

    invoke-static {}, Lcom/memo/connection/ConnectInfoSender;->getInstance()Lcom/memo/connection/ConnectInfoSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/connection/ConnectInfoSender;->exit()V

    return-void
.end method

.method private unregisterWifiStateReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mWifiStateReceiver:Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mWifiStateReceiver:Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;

    invoke-virtual {p0, v0}, Lcom/memo/cable/MemoDeviceService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mWifiStateReceiver:Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "gggl"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/memo/sdk/MemoTVCastSDK;->init(Landroid/content/Context;)V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/memo/cable/MemoDeviceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/memo/cable/MemoDeviceService;->init()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "gggl"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/memo/cable/MemoDeviceService;->unInit()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "gggl"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/memo/cable/MemoDeviceService;->stopSelf()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/memo/cable/MemoDeviceService;->registerWifiStateReceiver()V

    const-string v0, "gggl"

    const-string v1, "onStartCommand start thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/memo/cable/MemoDeviceService;->mSearchThread:Lcom/memo/cable/SearchThread;

    invoke-virtual {v0}, Lcom/memo/cable/SearchThread;->reInit()V

    invoke-direct {p0}, Lcom/memo/cable/MemoDeviceService;->startThread()V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method
