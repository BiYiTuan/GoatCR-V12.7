.class public Lorg/cybergarage/upnp/event/f;
.super Lorg/cybergarage/http/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/cybergarage/http/e;-><init>()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/f;->a(J)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/e;)V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/upnp/event/f;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/event/f;->a(Lorg/cybergarage/http/e;)V

    return-void
.end method

.method private b(Lorg/cybergarage/upnp/e;)V
    .locals 3

    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/upnp/event/f;->b(Ljava/lang/String;Z)V

    const-string v0, ""

    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->b()Lorg/cybergarage/upnp/Device;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->c()Lorg/cybergarage/upnp/Device;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->c()Lorg/cybergarage/upnp/Device;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_5
    invoke-static {v1}, Lorg/cybergarage/http/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v0, v1

    :cond_6
    invoke-static {v0}, Lorg/cybergarage/http/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lorg/cybergarage/http/b;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/upnp/event/f;->c(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/event/f;->p(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/f;->d(I)V

    return-void
.end method


# virtual methods
.method public V()Ljava/lang/String;
    .locals 3

    const-string v0, "CALLBACK"

    const-string v1, "<"

    const-string v2, ">"

    invoke-virtual {p0, v0, v1, v2}, Lorg/cybergarage/upnp/event/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public W()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/f;->V()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public X()Ljava/lang/String;
    .locals 1

    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/event/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public Y()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/f;->X()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Z()J
    .locals 2

    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/event/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Z)Lorg/cybergarage/upnp/event/g;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/f;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/f;->K()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/event/f;->a(Ljava/lang/String;IZ)Lorg/cybergarage/http/g;

    move-result-object v0

    new-instance v1, Lorg/cybergarage/upnp/event/g;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/event/g;-><init>(Lorg/cybergarage/http/g;)V

    return-object v1
.end method

.method public a(Lorg/cybergarage/upnp/e;)V
    .locals 1

    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/f;->m(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/event/f;->b(Lorg/cybergarage/upnp/e;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/f;->s(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/e;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/f;->m(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/event/f;->b(Lorg/cybergarage/upnp/e;)V

    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/event/f;->r(Ljava/lang/String;)V

    const-string v0, "upnp:event"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/f;->q(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lorg/cybergarage/upnp/event/f;->b(J)V

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/event/g;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/cybergarage/http/e;->a(Lorg/cybergarage/http/g;)Z

    return-void
.end method

.method public final b(J)V
    .locals 3

    const-string v0, "TIMEOUT"

    invoke-static {p1, p2}, Lorg/cybergarage/upnp/event/e;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/cybergarage/upnp/e;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/f;->m(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/event/f;->b(Lorg/cybergarage/upnp/e;)V

    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/event/f;->s(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lorg/cybergarage/upnp/event/f;->b(J)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/event/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CALLBACK"

    const-string v1, "<"

    const-string v2, ">"

    invoke-virtual {p0, v0, p1, v1, v2}, Lorg/cybergarage/upnp/event/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SID"

    invoke-static {p1}, Lorg/cybergarage/upnp/event/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
