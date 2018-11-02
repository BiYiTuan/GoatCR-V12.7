.class public Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
.super Ljava/util/Vector;


# instance fields
.field private binds:[Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/k;->d()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    return-void
.end method

.method public getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/k;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/ssdp/k;

    return-object v0
.end method

.method public open()Z
    .locals 1

    const/16 v0, 0x76c

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v0

    return v0
.end method

.method public open(I)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->binds:[Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    array-length v0, v3

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/cybergarage/a/a;->b()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-static {v2}, Lorg/cybergarage/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :cond_2
    :try_start_0
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    new-instance v3, Lorg/cybergarage/upnp/ssdp/k;

    aget-object v4, v2, v0

    invoke-direct {v3, v4, p1}, Lorg/cybergarage/upnp/ssdp/k;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    :goto_3
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public post(Lorg/cybergarage/upnp/ssdp/i;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/k;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/ssdp/k;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/cybergarage/upnp/ssdp/i;->u(Ljava/lang/String;)V

    const-string v0, "239.255.255.250"

    invoke-static {v6}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lorg/cybergarage/upnp/ssdp/c;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v6, 0x76c

    invoke-virtual {v5, v0, v6, p1}, Lorg/cybergarage/upnp/ssdp/k;->a(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/i;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public post(Lorg/cybergarage/upnp/ssdp/i;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/k;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/upnp/ssdp/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/ssdp/i;->u(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/cybergarage/upnp/ssdp/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v6, 0x76c

    invoke-virtual {v5, v0, v6, p1}, Lorg/cybergarage/upnp/ssdp/k;->a(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/i;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move-object v0, p2

    goto :goto_1
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/c;)V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/k;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/ssdp/k;->a(Lorg/cybergarage/upnp/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/k;->g()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/k;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
