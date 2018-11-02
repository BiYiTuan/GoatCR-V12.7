.class public Lcom/memo/cable/MemoDeviceServiceHelper;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/memo/cable/MemoDeviceServiceHelper;


# instance fields
.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cybergarage/upnp/Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/memo/cable/MemoDeviceServiceHelper;->startMemoDeviceService()V

    return-void
.end method

.method public static getInstance()Lcom/memo/cable/MemoDeviceServiceHelper;
    .locals 1

    sget-object v0, Lcom/memo/cable/MemoDeviceServiceHelper;->instance:Lcom/memo/cable/MemoDeviceServiceHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/memo/cable/MemoDeviceServiceHelper;

    invoke-direct {v0}, Lcom/memo/cable/MemoDeviceServiceHelper;-><init>()V

    sput-object v0, Lcom/memo/cable/MemoDeviceServiceHelper;->instance:Lcom/memo/cable/MemoDeviceServiceHelper;

    :cond_0
    sget-object v0, Lcom/memo/cable/MemoDeviceServiceHelper;->instance:Lcom/memo/cable/MemoDeviceServiceHelper;

    return-object v0
.end method

.method private startMemoDeviceService()V
    .locals 3

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/memo/cable/MemoDeviceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/cybergarage/upnp/Device;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/cable/DeviceContainer;->getDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDevice()Lorg/cybergarage/upnp/Device;
    .locals 1

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/cable/DeviceContainer;->getSelectedDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method public selectDevice(I)V
    .locals 2

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v1

    invoke-static {}, Lcom/memo/cable/MemoDeviceServiceHelper;->getInstance()Lcom/memo/cable/MemoDeviceServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/cable/MemoDeviceServiceHelper;->getDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    invoke-virtual {v1, v0}, Lcom/memo/cable/DeviceContainer;->setSelectedDevice(Lorg/cybergarage/upnp/Device;)V

    return-void
.end method

.method public startFindDevice()V
    .locals 3

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NOTFOUND"

    const-string v1, "MemoTVCastSDK.getInstance()==null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/memo/cable/MemoDeviceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public stopMemoDeviceService()V
    .locals 3

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/memo/cable/MemoDeviceService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
