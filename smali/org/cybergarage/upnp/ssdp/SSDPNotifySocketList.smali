.class public Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
.super Ljava/util/Vector;


# instance fields
.field private binds:[Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/e;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/e;->f()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->clear()V

    return-void
.end method

.method public getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/e;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/ssdp/e;

    return-object v0
.end method

.method public open()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->binds:[Ljava/net/InetAddress;

    if-eqz v3, :cond_3

    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    new-instance v2, Lorg/cybergarage/upnp/ssdp/e;

    aget-object v3, v0, v1

    invoke-direct {v2, v3}, Lorg/cybergarage/upnp/ssdp/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lorg/cybergarage/a/a;->b()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_1

    invoke-static {v2}, Lorg/cybergarage/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/c;)V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/e;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/ssdp/e;->a(Lorg/cybergarage/upnp/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/e;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/e;->i()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->getSSDPNotifySocket(I)Lorg/cybergarage/upnp/ssdp/e;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/e;->j()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
