.class public Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/memo/connection/ConnectInfoSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReceiveApThread"
.end annotation


# instance fields
.field public stop:Z

.field final synthetic this$0:Lcom/memo/connection/ConnectInfoSender;


# direct methods
.method public constructor <init>(Lcom/memo/connection/ConnectInfoSender;)V
    .locals 1

    iput-object p1, p0, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->this$0:Lcom/memo/connection/ConnectInfoSender;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->stop:Z

    return-void
.end method

.method private catchException(Ljava/lang/Exception;)V
    .locals 2

    iget-boolean v0, p0, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->stop:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->checkDeviceTimeOut()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private checkDeviceTimeOut()V
    .locals 10

    const/4 v4, 0x0

    const-string v0, "checkDeviceTimeOut()"

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sDevicePacketMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/memo/cable/MemoStatusPacket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v6, v0, Lcom/memo/cable/MemoStatusPacket;->status:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    iget-wide v6, v0, Lcom/memo/cable/MemoStatusPacket;->localTime:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    const-string v2, "(curtime - packet.localTime) > 10000"

    invoke-static {v2}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/memo/cable/DeviceContainer;->getDevices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v3, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/cybergarage/upnp/Device;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getChipId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bingo device.getChipId() is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping -c 2 -w 6 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/memo/cable/MemoStatusPacket;->ip:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/memo/cable/ShellUtils;->execCmd(Ljava/lang/String;Z)Lcom/memo/cable/ShellUtils$CommandResult;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ping result is "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v8, v1, Lcom/memo/cable/ShellUtils$CommandResult;->result:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", use time:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    iget v1, v1, Lcom/memo/cable/ShellUtils$CommandResult;->result:I

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/memo/cable/DeviceContainer;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/memo/cable/MemoStatusPacket;->localTime:J

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->stop:Z

    invoke-virtual {p0}, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 7

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->stop:Z

    if-nez v0, :cond_6

    :try_start_0
    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->this$0:Lcom/memo/connection/ConnectInfoSender;

    invoke-static {v0}, Lcom/memo/connection/ConnectInfoSender;->access$100(Lcom/memo/connection/ConnectInfoSender;)V

    :cond_2
    const/16 v0, 0x100

    new-array v0, v0, [B

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-direct {v1, v0, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveSocket receive message is :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->this$0:Lcom/memo/connection/ConnectInfoSender;

    iget-object v1, v1, Lcom/memo/connection/ConnectInfoSender;->localPacketMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-instance v4, Lcom/memo/cable/MemoStatusPacket;

    invoke-direct {v4, v3}, Lcom/memo/cable/MemoStatusPacket;-><init>(Lorg/json/JSONObject;)V

    iget v3, v4, Lcom/memo/cable/MemoStatusPacket;->status:I

    iget-object v0, v4, Lcom/memo/cable/MemoStatusPacket;->chipId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sDevicePacketMap:Ljava/util/HashMap;

    iget-object v5, v4, Lcom/memo/cable/MemoStatusPacket;->chipId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/memo/cable/MemoStatusPacket;

    sget-object v5, Lcom/memo/connection/ConnectInfoSender;->sDevicePacketMap:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/memo/cable/MemoStatusPacket;->chipId:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_8

    iget-object v5, v0, Lcom/memo/cable/MemoStatusPacket;->timestamp:Ljava/lang/String;

    iget-object v6, v4, Lcom/memo/cable/MemoStatusPacket;->timestamp:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget v0, v0, Lcom/memo/cable/MemoStatusPacket;->status:I

    iget v5, v4, Lcom/memo/cable/MemoStatusPacket;->status:I

    if-ne v5, v0, :cond_8

    move v0, v2

    :goto_1
    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getISetTvWifiListener()Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getISetTvWifiListener()Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;

    move-result-object v1

    invoke-interface {v1, v4, v0}, Lcom/memo/sdk/MemoTVCastSDK$ISetTvWifiListener;->onApStateChanged(Lcom/memo/cable/MemoStatusPacket;Z)V

    :cond_3
    const/4 v0, 0x3

    if-eq v3, v0, :cond_5

    iget-object v3, v4, Lcom/memo/cable/MemoStatusPacket;->chipId:Ljava/lang/String;

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/cable/DeviceContainer;->getDevices()Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getChipId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/memo/cable/DeviceContainer;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->checkDeviceTimeOut()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->catchException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-direct {p0, v0}, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->catchException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0, v0}, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->catchException(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    :cond_7
    return-void

    :cond_8
    move v0, v1

    goto :goto_1
.end method
