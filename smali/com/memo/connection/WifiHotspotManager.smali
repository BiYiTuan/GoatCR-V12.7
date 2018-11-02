.class public Lcom/memo/connection/WifiHotspotManager;
.super Lcom/memo/connection/MemoWifiManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/memo/connection/WifiHotspotManager$OnHotspotStateChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/memo/connection/WifiHotspotManager;


# instance fields
.field private mOnHotspotStateChangedListener:Lcom/memo/connection/WifiHotspotManager$OnHotspotStateChangedListener;

.field private oldConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/memo/connection/WifiHotspotManager;->sInstance:Lcom/memo/connection/WifiHotspotManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/memo/connection/MemoWifiManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/memo/connection/WifiHotspotManager;
    .locals 1

    sget-object v0, Lcom/memo/connection/WifiHotspotManager;->sInstance:Lcom/memo/connection/WifiHotspotManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/memo/connection/WifiHotspotManager;

    invoke-direct {v0, p0}, Lcom/memo/connection/WifiHotspotManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/memo/connection/WifiHotspotManager;->sInstance:Lcom/memo/connection/WifiHotspotManager;

    :cond_0
    sget-object v0, Lcom/memo/connection/WifiHotspotManager;->sInstance:Lcom/memo/connection/WifiHotspotManager;

    return-object v0
.end method

.method public static getSoftAPName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tubicast_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/memo/ManifestUtils;->getAnAndroidIDdroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAPConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/memo/connection/WifiHotspotManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getWifiApConfiguration"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lcom/memo/connection/WifiHotspotManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public getWifiApState()I
    .locals 4

    sget v1, Lcom/memo/connection/WifiHotspotManager;->WIFI_AP_STATE_FAILED:I

    :try_start_0
    iget-object v0, p0, Lcom/memo/connection/WifiHotspotManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getWifiApState"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/memo/connection/WifiHotspotManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public setHotspotStateChangedListener(Lcom/memo/connection/WifiHotspotManager$OnHotspotStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/memo/connection/WifiHotspotManager;->mOnHotspotStateChangedListener:Lcom/memo/connection/WifiHotspotManager$OnHotspotStateChangedListener;

    return-void
.end method

.method public setSoftapEnabled(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/memo/connection/WifiHotspotManager;->getAPConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/connection/WifiHotspotManager;->oldConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/memo/connection/WifiHotspotManager;->saveDataPreference()V

    invoke-virtual {p0, v1}, Lcom/memo/connection/WifiHotspotManager;->setWifiEnabled(Z)Z

    iget-object v0, p0, Lcom/memo/connection/WifiHotspotManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/memo/connection/MobileDataManager;->setMobileDataEnabled(Landroid/content/Context;Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/memo/connection/WifiHotspotManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/memo/connection/WifiHotspotManager;->getSoftAPName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/connection/WifiHotspotManager;->generateWifiSoftAPConfig(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/memo/connection/WifiHotspotManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/memo/connection/WifiHotspotManager;->setFrequencyBand(IZ)V

    return-void
.end method

.method protected updateWifiAPState(I)V
    .locals 1

    iget-object v0, p0, Lcom/memo/connection/WifiHotspotManager;->mOnHotspotStateChangedListener:Lcom/memo/connection/WifiHotspotManager$OnHotspotStateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/connection/WifiHotspotManager;->mOnHotspotStateChangedListener:Lcom/memo/connection/WifiHotspotManager$OnHotspotStateChangedListener;

    invoke-interface {v0, p1}, Lcom/memo/connection/WifiHotspotManager$OnHotspotStateChangedListener;->onWifiApStateChanged(I)V

    :cond_0
    return-void
.end method
