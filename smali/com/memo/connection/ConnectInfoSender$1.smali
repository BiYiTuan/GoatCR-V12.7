.class Lcom/memo/connection/ConnectInfoSender$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/memo/connection/ConnectInfoSender;->send([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/memo/connection/ConnectInfoSender;


# direct methods
.method constructor <init>(Lcom/memo/connection/ConnectInfoSender;)V
    .locals 0

    iput-object p1, p0, Lcom/memo/connection/ConnectInfoSender$1;->this$0:Lcom/memo/connection/ConnectInfoSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v2, v1

    :goto_0
    if-eqz v0, :cond_3

    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    const/16 v3, 0x100

    new-array v4, v3, [B

    add-int/lit8 v3, v2, 0x1

    new-instance v5, Ljava/net/DatagramPacket;

    array-length v2, v4

    invoke-direct {v5, v4, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    :try_start_0
    sget-object v2, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message[] recevice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!!!!!!!!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ssid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/memo/connection/ConnectInfoSender$1;->this$0:Lcom/memo/connection/ConnectInfoSender;

    iget-object v4, v4, Lcom/memo/connection/ConnectInfoSender;->localPacketMessages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getISetTvWifiListener()Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getISetTvWifiListener()Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;->onApStateChanged(Lcom/memo/cable/MemoStatusPacket;Z)V

    :cond_1
    move v0, v1

    :cond_2
    move v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_3
    return-void
.end method
