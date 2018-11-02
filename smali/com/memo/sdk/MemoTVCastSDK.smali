.class public Lcom/memo/sdk/MemoTVCastSDK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;
    }
.end annotation


# static fields
.field static mISetTvWifiListener:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sControlPoint:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/cybergarage/upnp/c;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeviceChangeListener:Lcom/memo/cable/DeviceContainer$DeviceChangeListener;

.field private static sInited:Z

.field private static sMemoWifiManager:Lcom/memo/connection/MemoWifiManager;

.field private static sTubiApListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/memo/sdk/IMemoAplistener;",
            ">;"
        }
    .end annotation
.end field

.field private static sTubiDeviceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/memo/sdk/IMemoDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field static sWifiAdmin:Lcom/memo/connection/WifiAdmin;

.field private static sWifiHotspotManager:Lcom/memo/connection/WifiHotspotManager;

.field static sWifiScanner:Lcom/memo/connection/WifiScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/memo/sdk/MemoTVCastSDK;->sInited:Z

    sput-object v1, Lcom/memo/sdk/MemoTVCastSDK;->sContext:Landroid/content/Context;

    sput-object v1, Lcom/memo/sdk/MemoTVCastSDK;->sControlPoint:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiApListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiDeviceListeners:Ljava/util/List;

    new-instance v0, Lcom/memo/sdk/MemoTVCastSDK$1;

    invoke-direct {v0}, Lcom/memo/sdk/MemoTVCastSDK$1;-><init>()V

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sDeviceChangeListener:Lcom/memo/cable/DeviceContainer$DeviceChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnNetworkStateChangedListener(Lcom/memo/connection/MemoWifiManager$OnNetworkStateChangedListener;)V
    .locals 1

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiScanner()Lcom/memo/connection/WifiScanner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/memo/connection/WifiScanner;->addOnNetworkStateChangedListener(Lcom/memo/connection/MemoWifiManager$OnNetworkStateChangedListener;)V

    return-void
.end method

.method public static connectAp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/memo/connection/MemoWifiManager$IConnectWifiListener;)V
    .locals 6

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiManager()Lcom/memo/connection/MemoWifiManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/memo/connection/MemoWifiManager;->connectWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/memo/connection/MemoWifiManager$IConnectWifiListener;)V

    return-void
.end method

.method public static exit()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/memo/sdk/MemoTVCastSDK;->sInited:Z

    invoke-static {}, Lcom/memo/cable/MemoDeviceServiceHelper;->getInstance()Lcom/memo/cable/MemoDeviceServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/cable/MemoDeviceServiceHelper;->stopMemoDeviceService()V

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    sget-object v1, Lcom/memo/sdk/MemoTVCastSDK;->sDeviceChangeListener:Lcom/memo/cable/DeviceContainer$DeviceChangeListener;

    invoke-virtual {v0, v1}, Lcom/memo/cable/DeviceContainer;->unRegistDeviceChangeListener(Lcom/memo/cable/DeviceContainer$DeviceChangeListener;)V

    invoke-static {}, Lcom/memo/connection/ConnectInfoSender;->getInstance()Lcom/memo/connection/ConnectInfoSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/connection/ConnectInfoSender;->exit()V

    const/4 v0, 0x0

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sContext:Landroid/content/Context;

    return-void
.end method

.method public static get4GWifiAp()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiHotspotManager()Lcom/memo/connection/WifiHotspotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/connection/WifiHotspotManager;->getAPConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getApListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/memo/sdk/IMemoAplistener;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiApListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiApListeners:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiApListeners:Ljava/util/List;

    return-object v0
.end method

.method public static getCipherType(Landroid/content/Context;Ljava/lang/String;)Lcom/memo/connection/WifiAdmin$WifiCipherType;
    .locals 3

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "WPA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_WPA:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    :goto_0
    return-object v0

    :cond_2
    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "wep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_WEP:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_INVALID:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    goto :goto_0
.end method

.method public static getControlPoint()Lorg/cybergarage/upnp/c;
    .locals 2

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sControlPoint:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/c;

    invoke-direct {v0}, Lorg/cybergarage/upnp/c;-><init>()V

    new-instance v1, Lcom/memo/sdk/MemoTVCastSDK$2;

    invoke-direct {v1}, Lcom/memo/sdk/MemoTVCastSDK$2;-><init>()V

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/memo/sdk/MemoTVCastSDK;->sControlPoint:Ljava/lang/ref/SoftReference;

    :cond_0
    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sControlPoint:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/c;

    return-object v0
.end method

.method public static getDeviceListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/memo/sdk/IMemoDeviceListener;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiDeviceListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiDeviceListeners:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiDeviceListeners:Ljava/util/List;

    return-object v0
.end method

.method public static getDevices()Ljava/util/List;
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

.method public static getISetTvWifiListener()Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;
    .locals 1

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->mISetTvWifiListener:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->mISetTvWifiListener:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;

    goto :goto_0
.end method

.method public static getInstance()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSSID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiManager()Lcom/memo/connection/MemoWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/connection/MemoWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiManager()Lcom/memo/connection/MemoWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/connection/MemoWifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedDevice()Lorg/cybergarage/upnp/Device;
    .locals 1

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/cable/DeviceContainer;->getSelectedDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method private static getWifiHotspotManager()Lcom/memo/connection/WifiHotspotManager;
    .locals 1

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sWifiHotspotManager:Lcom/memo/connection/WifiHotspotManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/connection/WifiHotspotManager;->getInstance(Landroid/content/Context;)Lcom/memo/connection/WifiHotspotManager;

    move-result-object v0

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sWifiHotspotManager:Lcom/memo/connection/WifiHotspotManager;

    :cond_0
    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sWifiHotspotManager:Lcom/memo/connection/WifiHotspotManager;

    return-object v0
.end method

.method public static getWifiManager()Lcom/memo/connection/MemoWifiManager;
    .locals 2

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sMemoWifiManager:Lcom/memo/connection/MemoWifiManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/memo/connection/MemoWifiManager;

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/memo/connection/MemoWifiManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sMemoWifiManager:Lcom/memo/connection/MemoWifiManager;

    :cond_0
    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sMemoWifiManager:Lcom/memo/connection/MemoWifiManager;

    return-object v0
.end method

.method private static getWifiScanner()Lcom/memo/connection/WifiScanner;
    .locals 2

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sWifiScanner:Lcom/memo/connection/WifiScanner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/memo/connection/WifiScanner;

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/memo/connection/WifiScanner;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sWifiScanner:Lcom/memo/connection/WifiScanner;

    :cond_0
    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sWifiScanner:Lcom/memo/connection/WifiScanner;

    return-object v0
.end method

.method private static getWifidmin()Lcom/memo/connection/WifiAdmin;
    .locals 2

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sWifiAdmin:Lcom/memo/connection/WifiAdmin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/memo/connection/WifiAdmin;

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getInstance()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/memo/connection/WifiAdmin;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sWifiAdmin:Lcom/memo/connection/WifiAdmin;

    :cond_0
    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sWifiAdmin:Lcom/memo/connection/WifiAdmin;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sput-object p0, Lcom/memo/sdk/MemoTVCastSDK;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    sget-object v1, Lcom/memo/sdk/MemoTVCastSDK;->sDeviceChangeListener:Lcom/memo/cable/DeviceContainer$DeviceChangeListener;

    invoke-virtual {v0, v1}, Lcom/memo/cable/DeviceContainer;->registDeviceChangeListener(Lcom/memo/cable/DeviceContainer$DeviceChangeListener;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/memo/sdk/MemoTVCastSDK;->sInited:Z

    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static openWifi()V
    .locals 1

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifidmin()Lcom/memo/connection/WifiAdmin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/connection/WifiAdmin;->openWifi()V

    return-void
.end method

.method public static registerDeviceListener(Lcom/memo/sdk/IMemoDeviceListener;)V
    .locals 1

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiDeviceListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiDeviceListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiDeviceListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static registerScanReceiver(Lcom/memo/OnScanResultListener;)V
    .locals 1

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiScanner()Lcom/memo/connection/WifiScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/connection/WifiScanner;->registerReceiver()V

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiScanner()Lcom/memo/connection/WifiScanner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/memo/connection/WifiScanner;->setOnScanResultListener(Lcom/memo/OnScanResultListener;)V

    return-void
.end method

.method public static removeOnNetworkStateChangedListener(Lcom/memo/connection/MemoWifiManager$OnNetworkStateChangedListener;)V
    .locals 1

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiScanner()Lcom/memo/connection/WifiScanner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/memo/connection/WifiScanner;->removeOnNetworkStateChangedListener(Lcom/memo/connection/MemoWifiManager$OnNetworkStateChangedListener;)V

    return-void
.end method

.method public static searchDeviceFromIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/memo/sdk/MemoTVCastSDK$3;

    invoke-direct {v1, p1, p0}, Lcom/memo/sdk/MemoTVCastSDK$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static sendHelpIpInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "###########User Input Ip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##############"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/memo/cable/SearchThread;->addRootDeviceIp(Ljava/lang/String;)V

    const-string v0, "000004fecc54abad"

    invoke-static {p1, v0}, Lcom/memo/sdk/MemoTVCastSDK;->searchDeviceFromIp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static sendHomeLiveWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;)V
    .locals 2

    invoke-static {p5}, Lcom/memo/sdk/MemoTVCastSDK;->setISetWifiListener(Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;)V

    const-string v0, "gggl"

    const-string v1, "sendHomeLiveWifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/memo/connection/WifiStepsConfig;->isPureSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/memo/connection/ConnectInfoSender;->getInstance()Lcom/memo/connection/ConnectInfoSender;

    move-result-object v1

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/memo/connection/ConnectInfoSender;->interActiveCase1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setControlPoint(Lorg/cybergarage/upnp/c;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sControlPoint:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public static setISetWifiListener(Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/memo/sdk/MemoTVCastSDK;->mISetTvWifiListener:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public static setSelectedDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 1

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/memo/cable/DeviceContainer;->setSelectedDevice(Lorg/cybergarage/upnp/Device;)V

    return-void
.end method

.method public static setSoftApEnable()Z
    .locals 2

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->get4GWifiAp()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiHotspotManager()Lcom/memo/connection/WifiHotspotManager;

    move-result-object v0

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->get4GWifiAp()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/memo/connection/WifiHotspotManager;->setSoftapEnabled(Landroid/net/wifi/WifiConfiguration;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setWifiEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiManager()Lcom/memo/connection/MemoWifiManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/memo/connection/MemoWifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

.method public static startDeviceApWork()V
    .locals 1

    invoke-static {}, Lcom/memo/connection/WifiStepsConfig;->isPureSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "MemoTVCastSDK startDeviceApWork"

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    invoke-static {}, Lcom/memo/connection/ConnectInfoSender;->getInstance()Lcom/memo/connection/ConnectInfoSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/connection/ConnectInfoSender;->startDeviceApWork()V

    goto :goto_0
.end method

.method public static startScan()V
    .locals 1

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiScanner()Lcom/memo/connection/WifiScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/connection/WifiScanner;->start()V

    return-void
.end method

.method public static startSearchLiveDevice()V
    .locals 1

    invoke-static {}, Lcom/memo/cable/MemoDeviceServiceHelper;->getInstance()Lcom/memo/cable/MemoDeviceServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/cable/MemoDeviceServiceHelper;->startFindDevice()V

    return-void
.end method

.method public static unRegisterDeviceListener(Lcom/memo/sdk/IMemoDeviceListener;)V
    .locals 1

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiDeviceListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiDeviceListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/memo/sdk/MemoTVCastSDK;->sTubiDeviceListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static unregisterScanReceiver()V
    .locals 2

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiScanner()Lcom/memo/connection/WifiScanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/connection/WifiScanner;->unregisterReceiver()V

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getWifiScanner()Lcom/memo/connection/WifiScanner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/memo/connection/WifiScanner;->setOnScanResultListener(Lcom/memo/OnScanResultListener;)V

    return-void
.end method
