.class public Lorg/cybergarage/http/HTTPServerList;
.super Ljava/util/Vector;


# instance fields
.field private binds:[Ljava/net/InetAddress;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    const/16 v0, 0xfa4

    iput v0, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    const/16 v0, 0xfa4

    iput v0, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    iput-object p1, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    iput p2, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    return-void
.end method


# virtual methods
.method public addRequestListener(Lorg/cybergarage/http/f;)V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/h;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/cybergarage/http/h;->a(Lorg/cybergarage/http/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/h;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/http/h;->c()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getHTTPServer(I)Lorg/cybergarage/http/h;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/HTTPServerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/http/h;

    return-object v0
.end method

.method public open()I
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/cybergarage/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

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
    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_5

    new-instance v3, Lorg/cybergarage/http/h;

    invoke-direct {v3}, Lorg/cybergarage/http/h;-><init>()V

    aget-object v4, v0, v1

    if-eqz v4, :cond_2

    aget-object v4, v0, v1

    iget v5, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    invoke-virtual {v3, v4, v5}, Lorg/cybergarage/http/h;->a(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->close()V

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->clear()V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lorg/cybergarage/a/a;->b()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_1

    invoke-static {v2}, Lorg/cybergarage/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v3}, Lorg/cybergarage/http/HTTPServerList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v2
.end method

.method public open(I)Z
    .locals 1

    iput p1, p0, Lorg/cybergarage/http/HTTPServerList;->port:I

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->open()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/h;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/http/h;->f()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/http/HTTPServerList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/HTTPServerList;->getHTTPServer(I)Lorg/cybergarage/http/h;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/http/h;->g()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
