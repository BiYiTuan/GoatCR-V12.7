.class public Lcom/gemini/custom/UdpClient;
.super Ljava/lang/Object;
.source "UdpClient.java"


# static fields
.field private static final SERVER_PORT:I = 0x1b5d


# instance fields
.field private dSocket:Ljava/net/DatagramSocket;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    .line 19
    iput-object p1, p0, Lcom/gemini/custom/UdpClient;->msg:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 32
    .local v3, "rmd":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 33
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    :try_start_1
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v5, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    .line 40
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    :goto_1
    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->msg:Ljava/lang/String;

    if-nez v5, :cond_0

    const/4 v2, 0x0

    .line 46
    .local v2, "msg_len":I
    :goto_2
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0x1b5d

    invoke-direct {v0, v5, v2, v3, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 48
    .local v0, "dPacket":Ljava/net/DatagramPacket;
    :try_start_2
    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 49
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 54
    :goto_3
    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 34
    .end local v0    # "dPacket":Ljava/net/DatagramPacket;
    .end local v2    # "msg_len":I
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 41
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 42
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 43
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 45
    .end local v1    # "e":Ljava/net/SocketException;
    :cond_0
    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2

    .line 50
    .restart local v0    # "dPacket":Ljava/net/DatagramPacket;
    .restart local v2    # "msg_len":I
    :catch_2
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public send(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v5, 0x0

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 61
    .local v3, "rmd":Ljava/net/InetAddress;
    if-nez p1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v5

    .line 66
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 67
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    :try_start_1
    new-instance v6, Ljava/net/DatagramSocket;

    invoke-direct {v6}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v6, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    .line 74
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    if-eqz v3, :cond_0

    .line 83
    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->msg:Ljava/lang/String;

    if-nez v5, :cond_2

    const/4 v2, 0x0

    .line 84
    .local v2, "msg_len":I
    :goto_2
    new-instance v0, Ljava/net/DatagramPacket;

    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v0, v5, v2, v3, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 86
    .local v0, "dPacket":Ljava/net/DatagramPacket;
    :try_start_2
    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 87
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 92
    :goto_3
    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 94
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 68
    .end local v0    # "dPacket":Ljava/net/DatagramPacket;
    .end local v2    # "msg_len":I
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1

    .line 75
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 76
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 77
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    .end local v1    # "e":Ljava/net/SocketException;
    :cond_2
    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2

    .line 88
    .restart local v0    # "dPacket":Ljava/net/DatagramPacket;
    .restart local v2    # "msg_len":I
    :catch_2
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public send(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "context"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 102
    .local v3, "rmd":Ljava/net/InetAddress;
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v5

    .line 107
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 108
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_1
    :try_start_1
    new-instance v6, Ljava/net/DatagramSocket;

    invoke-direct {v6}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v6, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    .line 115
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    if-eqz v3, :cond_0

    .line 124
    if-nez p3, :cond_2

    const/4 v2, 0x0

    .line 125
    .local v2, "msg_len":I
    :goto_2
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v0, v5, v2, v3, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 127
    .local v0, "dPacket":Ljava/net/DatagramPacket;
    :try_start_2
    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 128
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    :goto_3
    iget-object v5, p0, Lcom/gemini/custom/UdpClient;->dSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    .line 135
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 109
    .end local v0    # "dPacket":Ljava/net/DatagramPacket;
    .end local v2    # "msg_len":I
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1

    .line 116
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Ljava/net/SocketException;
    invoke-virtual {v1}, Ljava/net/SocketException;->printStackTrace()V

    .line 118
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 124
    .end local v1    # "e":Ljava/net/SocketException;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_2

    .line 129
    .restart local v0    # "dPacket":Ljava/net/DatagramPacket;
    .restart local v2    # "msg_len":I
    :catch_2
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
