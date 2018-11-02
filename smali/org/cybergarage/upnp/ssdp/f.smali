.class public Lorg/cybergarage/upnp/ssdp/f;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field private b:Ljava/net/DatagramPacket;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>([BI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/f;->b:Ljava/net/DatagramPacket;

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/f;->c:Ljava/lang/String;

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/f;->a:[B

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/f;->b:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public a()Ljava/net/DatagramPacket;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/f;->b:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lorg/cybergarage/upnp/ssdp/f;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/f;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lorg/cybergarage/upnp/ssdp/f;->d:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->a()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->a()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0
.end method

.method public f()[B
    .locals 4

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/f;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/f;->a:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->a()Ljava/net/DatagramPacket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/f;->a:[B

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/f;->a:[B

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v0

    const-string v1, "HOST"

    invoke-static {v0, v1}, Lorg/cybergarage/http/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v0

    const-string v1, "Cache-Control"

    invoke-static {v0, v1}, Lorg/cybergarage/http/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v0

    const-string v1, "Location"

    invoke-static {v0, v1}, Lorg/cybergarage/http/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v0

    const-string v1, "MAN"

    invoke-static {v0, v1}, Lorg/cybergarage/http/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v0

    const-string v1, "ST"

    invoke-static {v0, v1}, Lorg/cybergarage/http/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v0

    const-string v1, "NT"

    invoke-static {v0, v1}, Lorg/cybergarage/http/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v0

    const-string v1, "NTS"

    invoke-static {v0, v1}, Lorg/cybergarage/http/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v0

    const-string v1, "USN"

    invoke-static {v0, v1}, Lorg/cybergarage/http/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v0

    const-string v1, "MX"

    invoke-static {v0, v1}, Lorg/cybergarage/http/c;->b([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p()Ljava/net/InetAddress;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "127.0.0.1"

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/upnp/device/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/upnp/device/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/k;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public t()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/e;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public u()I
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/ssdp/c;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
