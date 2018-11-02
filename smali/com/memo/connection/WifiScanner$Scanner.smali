.class Lcom/memo/connection/WifiScanner$Scanner;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/memo/connection/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/memo/connection/WifiScanner;


# direct methods
.method private constructor <init>(Lcom/memo/connection/WifiScanner;)V
    .locals 1

    iput-object p1, p0, Lcom/memo/connection/WifiScanner$Scanner;->this$0:Lcom/memo/connection/WifiScanner;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/memo/connection/WifiScanner$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/memo/connection/WifiScanner;Lcom/memo/connection/WifiScanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/memo/connection/WifiScanner$Scanner;-><init>(Lcom/memo/connection/WifiScanner;)V

    return-void
.end method


# virtual methods
.method forceScan()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/memo/connection/WifiScanner$Scanner;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/memo/connection/WifiScanner$Scanner;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/memo/connection/WifiScanner$Scanner;->this$0:Lcom/memo/connection/WifiScanner;

    iget-object v0, v0, Lcom/memo/connection/WifiScanner;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/memo/connection/WifiScanner$Scanner;->mRetry:I

    :cond_0
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Lcom/memo/connection/WifiScanner$Scanner;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/memo/connection/WifiScanner$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/memo/connection/WifiScanner$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iput v2, p0, Lcom/memo/connection/WifiScanner$Scanner;->mRetry:I

    iget-object v0, p0, Lcom/memo/connection/WifiScanner$Scanner;->this$0:Lcom/memo/connection/WifiScanner;

    invoke-static {v0}, Lcom/memo/connection/WifiScanner;->access$100(Lcom/memo/connection/WifiScanner;)Lcom/memo/OnScanResultListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/memo/connection/WifiScanner$Scanner;->this$0:Lcom/memo/connection/WifiScanner;

    invoke-static {v0}, Lcom/memo/connection/WifiScanner;->access$100(Lcom/memo/connection/WifiScanner;)Lcom/memo/OnScanResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/memo/OnScanResultListener;->onScanErrorOccurs()V

    goto :goto_0
.end method

.method pause()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/memo/connection/WifiScanner$Scanner;->mRetry:I

    invoke-virtual {p0, v0}, Lcom/memo/connection/WifiScanner$Scanner;->removeMessages(I)V

    return-void
.end method

.method resume()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/memo/connection/WifiScanner$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/memo/connection/WifiScanner$Scanner;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
