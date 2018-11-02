.class Lcom/memo/connection/MemoWifiManager$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/memo/connection/MemoWifiManager;->connectWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/memo/connection/MemoWifiManager$IConnectWifiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/memo/connection/MemoWifiManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;

.field final synthetic val$pwd:Ljava/lang/String;

.field final synthetic val$ssid:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/memo/connection/MemoWifiManager;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/memo/connection/MemoWifiManager$IConnectWifiListener;)V
    .locals 0

    iput-object p1, p0, Lcom/memo/connection/MemoWifiManager$2;->this$0:Lcom/memo/connection/MemoWifiManager;

    iput-object p3, p0, Lcom/memo/connection/MemoWifiManager$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/memo/connection/MemoWifiManager$2;->val$ssid:Ljava/lang/String;

    iput-object p5, p0, Lcom/memo/connection/MemoWifiManager$2;->val$pwd:Ljava/lang/String;

    iput p6, p0, Lcom/memo/connection/MemoWifiManager$2;->val$type:I

    iput-object p7, p0, Lcom/memo/connection/MemoWifiManager$2;->val$listener:Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    new-instance v4, Lcom/memo/connection/WifiAdmin;

    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->val$context:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/memo/connection/WifiAdmin;-><init>(Landroid/content/Context;)V

    move v3, v1

    :goto_0
    const/4 v0, 0x2

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->val$ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/memo/connection/MemoWifiManager$2;->val$pwd:Ljava/lang/String;

    iget v5, p0, Lcom/memo/connection/MemoWifiManager$2;->val$type:I

    invoke-static {v5}, Lcom/memo/connection/WifiAdmin$WifiCipherType;->valueOf(I)Lcom/memo/connection/WifiAdmin$WifiCipherType;

    move-result-object v5

    invoke-virtual {v4, v0, v2, v5}, Lcom/memo/connection/WifiAdmin;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/memo/connection/WifiAdmin$WifiCipherType;)Z

    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->val$ssid:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/memo/connection/WifiAdmin;->isExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->val$ssid:Ljava/lang/String;

    iget-object v2, p0, Lcom/memo/connection/MemoWifiManager$2;->val$pwd:Ljava/lang/String;

    iget v5, p0, Lcom/memo/connection/MemoWifiManager$2;->val$type:I

    invoke-static {v5}, Lcom/memo/connection/WifiAdmin$WifiCipherType;->valueOf(I)Lcom/memo/connection/WifiAdmin$WifiCipherType;

    move-result-object v5

    invoke-virtual {v4, v0, v2, v5}, Lcom/memo/connection/WifiAdmin;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;Lcom/memo/connection/WifiAdmin$WifiCipherType;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v2, p0, Lcom/memo/connection/MemoWifiManager$2;->this$0:Lcom/memo/connection/MemoWifiManager;

    iget-object v2, v2, Lcom/memo/connection/MemoWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iget-object v2, p0, Lcom/memo/connection/MemoWifiManager$2;->this$0:Lcom/memo/connection/MemoWifiManager;

    iget-object v2, v2, Lcom/memo/connection/MemoWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    if-lt v3, v8, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->this$0:Lcom/memo/connection/MemoWifiManager;

    iget-object v0, v0, Lcom/memo/connection/MemoWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->val$listener:Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->val$listener:Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;

    iget-object v1, p0, Lcom/memo/connection/MemoWifiManager$2;->val$ssid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;->connectFaild(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/memo/connection/MemoWifiManager$2;->this$0:Lcom/memo/connection/MemoWifiManager;

    iget-object v2, v2, Lcom/memo/connection/MemoWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v0, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v0

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v6, p0, Lcom/memo/connection/MemoWifiManager$2;->val$ssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/memo/connection/MemoWifiManager$2;->val$ssid:Ljava/lang/String;

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/memo/connection/MemoWifiManager$2;->this$0:Lcom/memo/connection/MemoWifiManager;

    iget-object v5, v5, Lcom/memo/connection/MemoWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v0, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/memo/connection/MemoWifiManager$2;->this$0:Lcom/memo/connection/MemoWifiManager;

    iget-object v5, v5, Lcom/memo/connection/MemoWifiManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_3

    :cond_6
    move v0, v1

    :goto_4
    add-int/lit8 v2, v0, 0x1

    const/4 v5, 0x7

    if-ge v0, v5, :cond_9

    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->this$0:Lcom/memo/connection/MemoWifiManager;

    iget-object v5, p0, Lcom/memo/connection/MemoWifiManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/memo/connection/MemoWifiManager;->access$100(Lcom/memo/connection/MemoWifiManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v2

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    :cond_7
    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/memo/connection/MemoWifiManager$2;->val$ssid:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->val$listener:Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->val$listener:Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;

    iget-object v1, p0, Lcom/memo/connection/MemoWifiManager$2;->val$ssid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;->connectComlete(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    if-ne v8, v3, :cond_a

    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->val$listener:Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/memo/connection/MemoWifiManager$2;->val$listener:Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;

    iget-object v2, p0, Lcom/memo/connection/MemoWifiManager$2;->val$ssid:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/memo/connection/MemoWifiManager$IConnectWifiListener;->connectFaild(Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0
.end method
