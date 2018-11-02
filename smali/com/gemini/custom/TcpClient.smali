.class public Lcom/gemini/custom/TcpClient;
.super Ljava/lang/Object;
.source "TcpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "context"    # Ljava/lang/String;

    .prologue
    .line 14
    :try_start_0
    const-string v4, "TCP"

    invoke-static {v4}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 16
    new-instance v3, Ljava/net/Socket;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 17
    .local v3, "s":Ljava/net/Socket;
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 18
    .local v2, "ops":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 20
    .local v0, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 22
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v2    # "ops":Ljava/io/OutputStream;
    .end local v3    # "s":Ljava/net/Socket;
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
