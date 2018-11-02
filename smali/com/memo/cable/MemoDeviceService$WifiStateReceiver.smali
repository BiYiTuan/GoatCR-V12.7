.class Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/memo/cable/MemoDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/memo/cable/MemoDeviceService;


# direct methods
.method private constructor <init>(Lcom/memo/cable/MemoDeviceService;)V
    .locals 0

    iput-object p1, p0, Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;->this$0:Lcom/memo/cable/MemoDeviceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/memo/cable/MemoDeviceService;Lcom/memo/cable/MemoDeviceService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/memo/cable/MemoDeviceService$WifiStateReceiver;-><init>(Lcom/memo/cable/MemoDeviceService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifi_state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "gggl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "###########Device Service WifiManager.WIFI_STATE_ENABLED #####"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/memo/cable/MemoDeviceServiceHelper;->getInstance()Lcom/memo/cable/MemoDeviceServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/cable/MemoDeviceServiceHelper;->startFindDevice()V

    goto :goto_0

    :pswitch_2
    const-string v0, "gggl"

    const-string v1, "wifi disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
