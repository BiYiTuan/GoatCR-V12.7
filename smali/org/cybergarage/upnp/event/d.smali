.class public Lorg/cybergarage/upnp/event/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/event/d;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/d;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/d;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/event/d;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/upnp/event/d;->f:I

    iput-wide v2, p0, Lorg/cybergarage/upnp/event/d;->g:J

    iput-wide v2, p0, Lorg/cybergarage/upnp/event/d;->h:J

    iput-wide v2, p0, Lorg/cybergarage/upnp/event/d;->i:J

    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/d;->k()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/event/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/cybergarage/upnp/event/d;->i:J

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lorg/cybergarage/upnp/event/d;->g:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/event/d;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/event/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lorg/cybergarage/upnp/event/d;->h:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/cybergarage/upnp/event/d;->c:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/event/d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/cybergarage/upnp/event/d;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    iput v0, p0, Lorg/cybergarage/upnp/event/d;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/event/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/event/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/cybergarage/upnp/event/d;->f:I

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lorg/cybergarage/upnp/event/d;->g:J

    return-wide v0
.end method

.method public g()Z
    .locals 10

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/cybergarage/upnp/event/d;->g:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/d;->h()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/d;->f()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lorg/cybergarage/upnp/event/d;->h:J

    return-wide v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lorg/cybergarage/upnp/event/d;->i:J

    return-wide v0
.end method

.method public j()V
    .locals 6

    const-wide/16 v4, 0x1

    iget-wide v0, p0, Lorg/cybergarage/upnp/event/d;->i:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iput-wide v4, p0, Lorg/cybergarage/upnp/event/d;->i:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lorg/cybergarage/upnp/event/d;->i:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lorg/cybergarage/upnp/event/d;->i:J

    goto :goto_0
.end method

.method public k()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/d;->b(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/d;->a(I)V

    return-void
.end method
