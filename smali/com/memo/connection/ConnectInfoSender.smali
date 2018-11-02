.class public Lcom/memo/connection/ConnectInfoSender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;,
        Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;
    }
.end annotation


# static fields
.field static receiveSocket:Ljava/net/DatagramSocket;

.field public static sDevicePacketMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/memo/cable/MemoStatusPacket;",
            ">;"
        }
    .end annotation
.end field

.field static sSender:Lcom/memo/connection/ConnectInfoSender;

.field static sendSocket:Ljava/net/DatagramSocket;

.field static server_port_receive:I

.field static server_port_send:I


# instance fields
.field public localPacketMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReceiveApThread:Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;

.field mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0xc350

    sput v0, Lcom/memo/connection/ConnectInfoSender;->server_port_send:I

    const v0, 0xc351

    sput v0, Lcom/memo/connection/ConnectInfoSender;->server_port_receive:I

    sput-object v1, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    sput-object v1, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/memo/connection/ConnectInfoSender;->sDevicePacketMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->localPacketMessages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/memo/connection/ConnectInfoSender;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/memo/connection/ConnectInfoSender;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/memo/connection/ConnectInfoSender;)V
    .locals 0

    invoke-direct {p0}, Lcom/memo/connection/ConnectInfoSender;->initReceiveSocket()V

    return-void
.end method

.method public static getInstance()Lcom/memo/connection/ConnectInfoSender;
    .locals 2

    const-class v1, Lcom/memo/connection/ConnectInfoSender;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sSender:Lcom/memo/connection/ConnectInfoSender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/memo/connection/ConnectInfoSender;

    invoke-direct {v0}, Lcom/memo/connection/ConnectInfoSender;-><init>()V

    sput-object v0, Lcom/memo/connection/ConnectInfoSender;->sSender:Lcom/memo/connection/ConnectInfoSender;

    :cond_0
    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sSender:Lcom/memo/connection/ConnectInfoSender;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getTimestamp()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initReceiveSocket()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    sget v1, Lcom/memo/connection/ConnectInfoSender;->server_port_receive:I

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    sput-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    const-string v0, "init receive socket success"

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init receive socket Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSendSocket()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    sget v1, Lcom/memo/connection/ConnectInfoSender;->server_port_send:I

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(I)V

    sput-object v0, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    const-string v0, "init send socket success"

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init send socket error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "local Address or local port 50000 is in use now!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public exit()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    invoke-virtual {v0}, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->close()V

    iput-object v1, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    :cond_0
    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mReceiveApThread:Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mReceiveApThread:Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;

    invoke-virtual {v0}, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->close()V

    iput-object v1, p0, Lcom/memo/connection/ConnectInfoSender;->mReceiveApThread:Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;

    :cond_1
    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    sput-object v1, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    :cond_2
    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    sput-object v1, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    :cond_3
    return-void
.end method

.method public interActiveCase0()V
    .locals 2

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->stop:Z

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    invoke-virtual {v0}, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->interrupt()V

    :cond_0
    new-instance v0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    invoke-direct {v0, p0}, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;-><init>(Lcom/memo/connection/ConnectInfoSender;)V

    iput-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    invoke-virtual {v0}, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->start()V

    return-void
.end method

.method public interActiveCase1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/memo/connection/WifiStepsConfig;->isPureSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "interActiveCase1()"

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/memo/connection/ConnectInfoSender;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{\"name\":\"%s\",\"ssid\":\"%s\",\"key\":\"%s\",\"device_name\":\"%s\",\"mode\":\"%d\",\"timestamp\":\"%s\"}"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    aput-object p3, v2, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{\"ssid\":\"%s\",\"key\":\"%s\",\"device_name\":\"%s\",\"mode\":\"%d\",\"id\":\"%s\"}"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v6

    aput-object p3, v3, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object v0, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/memo/connection/ConnectInfoSender;->localPacketMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/memo/connection/ConnectInfoSender;->localPacketMessages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/memo/connection/ConnectInfoSender;->localPacketMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/memo/connection/ConnectInfoSender;->localPacketMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-array v2, v7, [Ljava/lang/String;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "json will be send:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json will be send:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    const-class v1, Lcom/memo/connection/ConnectInfoSender;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    iget-boolean v0, v0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->stop:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    invoke-virtual {v0, v2}, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->appendMessage([Ljava/lang/String;)V

    :goto_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    new-instance v0, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    invoke-direct {v0, p0}, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;-><init>(Lcom/memo/connection/ConnectInfoSender;)V

    iput-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    invoke-virtual {v0, v2}, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->appendMessage([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    invoke-virtual {v0}, Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public isAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mRecycleSendPackageThread:Lcom/memo/connection/ConnectInfoSender$RecycleSendPackageThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/lang/String;)Ljava/net/DatagramSocket;
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/memo/connection/ConnectInfoSender;->initSendSocket()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DatagramSocket send:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string p1, "Hello IdeasAndroid!"

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "255.255.255.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v3, v2, [B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    new-instance v4, Ljava/net/DatagramPacket;

    sget v5, Lcom/memo/connection/ConnectInfoSender;->server_port_send:I

    invoke-direct {v4, v3, v1, v0, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    move v0, v2

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    :try_start_1
    sget-object v1, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const-string v1, "udpsocket send 255.255.255.255"

    invoke-static {v1}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send io exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public send([Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/memo/connection/ConnectInfoSender;->initSendSocket()V

    :cond_1
    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "255.255.255.255"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DatagramSocket send:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    new-instance v5, Ljava/net/DatagramPacket;

    sget v6, Lcom/memo/connection/ConnectInfoSender;->server_port_send:I

    invoke-direct {v5, v4, v3, v0, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    :try_start_1
    sget-object v3, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    sget-object v3, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    sget-object v3, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const-string v3, "DatagramSocket send success"

    invoke-static {v3}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    const-string v3, "{\"ssid\":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/memo/connection/ConnectInfoSender$1;

    invoke-direct {v3, p0}, Lcom/memo/connection/ConnectInfoSender$1;-><init>(Lcom/memo/connection/ConnectInfoSender;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send io exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public startDeviceApWork()V
    .locals 2

    invoke-static {}, Lcom/memo/connection/WifiStepsConfig;->isPureSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/memo/connection/ConnectInfoSender;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->sendSocket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/memo/connection/ConnectInfoSender;->initSendSocket()V

    :cond_1
    sget-object v0, Lcom/memo/connection/ConnectInfoSender;->receiveSocket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/memo/connection/ConnectInfoSender;->initReceiveSocket()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/memo/connection/ConnectInfoSender;->interActiveCase0()V

    invoke-virtual {p0}, Lcom/memo/connection/ConnectInfoSender;->startReceive()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startReceive()V
    .locals 2

    const-string v0, "startReceive()"

    invoke-static {v0}, Lcom/memo/TestXlog;->i2(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mReceiveApThread:Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mReceiveApThread:Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->stop:Z

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mReceiveApThread:Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;

    invoke-virtual {v0}, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->interrupt()V

    :cond_0
    new-instance v0, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;

    invoke-direct {v0, p0}, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;-><init>(Lcom/memo/connection/ConnectInfoSender;)V

    iput-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mReceiveApThread:Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;

    iget-object v0, p0, Lcom/memo/connection/ConnectInfoSender;->mReceiveApThread:Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;

    invoke-virtual {v0}, Lcom/memo/connection/ConnectInfoSender$ReceiveApThread;->start()V

    return-void
.end method
