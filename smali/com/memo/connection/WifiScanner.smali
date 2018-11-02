.class public Lcom/memo/connection/WifiScanner;
.super Lcom/memo/connection/MemoWifiManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/memo/connection/WifiScanner$Multimap;,
        Lcom/memo/connection/WifiScanner$Scanner;
    }
.end annotation


# static fields
.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x7d0

.field private static apPrefix:Ljava/lang/String;


# instance fields
.field private mAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/memo/connection/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScanResultListener:Lcom/memo/OnScanResultListener;

.field private mScanner:Lcom/memo/connection/WifiScanner$Scanner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "tubicast"

    const-string v1, "azcast"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LOLLIPOP"

    sput-object v0, Lcom/memo/connection/WifiScanner;->apPrefix:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "tubicast"

    sput-object v0, Lcom/memo/connection/WifiScanner;->apPrefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/memo/connection/MemoWifiManager;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/memo/connection/WifiScanner;->mAccessPoints:Ljava/util/List;

    new-instance v0, Lcom/memo/connection/WifiScanner$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/memo/connection/WifiScanner$Scanner;-><init>(Lcom/memo/connection/WifiScanner;Lcom/memo/connection/WifiScanner$1;)V

    iput-object v0, p0, Lcom/memo/connection/WifiScanner;->mScanner:Lcom/memo/connection/WifiScanner$Scanner;

    return-void
.end method

.method static synthetic access$100(Lcom/memo/connection/WifiScanner;)Lcom/memo/OnScanResultListener;
    .locals 1

    iget-object v0, p0, Lcom/memo/connection/WifiScanner;->mOnScanResultListener:Lcom/memo/OnScanResultListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized constructAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/memo/connection/AccessPoint;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/memo/connection/WifiScanner$Multimap;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/memo/connection/WifiScanner$Multimap;-><init>(Lcom/memo/connection/WifiScanner;Lcom/memo/connection/WifiScanner$1;)V

    iget-object v0, p0, Lcom/memo/connection/WifiScanner;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    sget-object v2, Lcom/memo/connection/WifiScanner;->apPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/memo/connection/WifiScanner$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/memo/connection/AccessPoint;

    invoke-virtual {v1, v0}, Lcom/memo/connection/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_0

    new-instance v1, Lcom/memo/connection/AccessPoint;

    invoke-direct {v1, v0}, Lcom/memo/connection/AccessPoint;-><init>(Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/memo/connection/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/memo/connection/WifiScanner$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    monitor-exit p0

    return-object v3

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/memo/connection/WifiScanner;->mScanner:Lcom/memo/connection/WifiScanner$Scanner;

    invoke-virtual {v0}, Lcom/memo/connection/WifiScanner$Scanner;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/memo/connection/WifiScanner;->mScanner:Lcom/memo/connection/WifiScanner$Scanner;

    invoke-virtual {v0}, Lcom/memo/connection/WifiScanner$Scanner;->resume()V

    return-void
.end method

.method public setOnScanResultListener(Lcom/memo/OnScanResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/memo/connection/WifiScanner;->mOnScanResultListener:Lcom/memo/OnScanResultListener;

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/memo/connection/WifiScanner;->mScanner:Lcom/memo/connection/WifiScanner$Scanner;

    invoke-virtual {v0}, Lcom/memo/connection/WifiScanner$Scanner;->forceScan()V

    return-void
.end method

.method protected declared-synchronized updateAccessPoints()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/memo/connection/MemoWifiManager;->updateAccessPoints()V

    iget-object v0, p0, Lcom/memo/connection/WifiScanner;->mAccessPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/memo/connection/WifiScanner;->mAccessPoints:Ljava/util/List;

    invoke-virtual {p0}, Lcom/memo/connection/WifiScanner;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/memo/connection/WifiScanner;->mOnScanResultListener:Lcom/memo/OnScanResultListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/connection/WifiScanner;->mOnScanResultListener:Lcom/memo/OnScanResultListener;

    iget-object v1, p0, Lcom/memo/connection/WifiScanner;->mAccessPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/memo/OnScanResultListener;->onScanResultUpdateChanged(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateWifiState(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/memo/connection/MemoWifiManager;->updateWifiState(I)V

    return-void
.end method
