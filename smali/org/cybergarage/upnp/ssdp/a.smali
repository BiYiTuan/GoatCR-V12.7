.class public Lorg/cybergarage/upnp/ssdp/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/InetSocketAddress;

.field private b:Ljava/net/MulticastSocket;

.field private c:Ljava/net/NetworkInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->a:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->c:Ljava/net/NetworkInterface;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->a:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->c:Ljava/net/NetworkInterface;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->c:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    instance-of v3, v1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v3, v1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ssdp/a;->a(Ljava/lang/String;ILjava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILjava/net/InetAddress;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/net/MulticastSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2}, Ljava/net/InetSocketAddress;-><init>(I)V

    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v2, v1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/a;->a:Ljava/net/InetSocketAddress;

    invoke-static {p3}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/a;->c:Ljava/net/NetworkInterface;

    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/a;->a:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/a;->c:Ljava/net/NetworkInterface;

    invoke-virtual {v1, v2, v3}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    :try_start_0
    new-instance v0, Ljava/net/MulticastSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->bind(Ljava/net/SocketAddress;)V

    :goto_0
    new-instance v1, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lorg/cybergarage/upnp/ssdp/a;->a:Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V

    invoke-static {}, Lorg/cybergarage/upnp/g;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->close()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    new-instance v0, Ljava/net/MulticastSocket;

    invoke-direct {v0}, Ljava/net/MulticastSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lorg/cybergarage/http/e;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/cybergarage/upnp/ssdp/a;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v0}, Ljava/net/MulticastSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public d()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->a:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/a;->d()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/a;->a:Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/a;->c:Ljava/net/NetworkInterface;

    invoke-virtual {v1, v2, v3}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Ljava/net/MulticastSocket;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/a;->f()Z

    return-void
.end method

.method public g()Lorg/cybergarage/upnp/ssdp/f;
    .locals 4

    const/16 v0, 0x400

    new-array v0, v0, [B

    new-instance v1, Lorg/cybergarage/upnp/ssdp/f;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Lorg/cybergarage/upnp/ssdp/f;-><init>([BI)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ssdp/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/a;->b:Ljava/net/MulticastSocket;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/f;->a()Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/net/MulticastSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/ssdp/f;->a(J)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Multicast socket has already been closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
