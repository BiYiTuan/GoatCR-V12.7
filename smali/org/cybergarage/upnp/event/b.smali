.class public Lorg/cybergarage/upnp/event/b;
.super Lorg/cybergarage/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/b/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/e;)V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/b/b;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/event/b;->a(Lorg/cybergarage/http/e;)V

    return-void
.end method

.method private c(Lorg/cybergarage/xml/b;)Lorg/cybergarage/upnp/event/c;
    .locals 4

    new-instance v1, Lorg/cybergarage/upnp/event/c;

    invoke-direct {v1}, Lorg/cybergarage/upnp/event/c;-><init>()V

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/event/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/xml/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/event/c;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/xml/b;
    .locals 3

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "propertyset"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v1, "e"

    const-string v2, "urn:schemas-upnp-org:event-1-0"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v2, "property"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    new-instance v2, Lorg/cybergarage/xml/b;

    invoke-direct {v2, p1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    return-object v0
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/event/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Z()J
    .locals 2

    const-string v0, "SEQ"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/b;->f(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lorg/cybergarage/upnp/event/d;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/d;->b()Ljava/lang/String;

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/d;->i()J

    move-result-wide v2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/d;->e()I

    move-result v5

    const-string v6, "NOTIFY"

    invoke-virtual {p0, v6}, Lorg/cybergarage/upnp/event/b;->m(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/event/b;->o(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5}, Lorg/cybergarage/upnp/event/b;->c(Ljava/lang/String;I)V

    const-string v1, "upnp:event"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/event/b;->s(Ljava/lang/String;)V

    const-string v1, "upnp:propchange"

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/event/b;->t(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/b;->u(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lorg/cybergarage/upnp/event/b;->b(J)V

    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/b;->h(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lorg/cybergarage/upnp/event/b;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/b;->b(Lorg/cybergarage/xml/b;)V

    const/4 v0, 0x1

    return v0
.end method

.method public aa()Lorg/cybergarage/upnp/event/PropertyList;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lorg/cybergarage/upnp/event/PropertyList;

    invoke-direct {v2}, Lorg/cybergarage/upnp/event/PropertyList;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/event/b;->W()Lorg/cybergarage/xml/b;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-virtual {v3}, Lorg/cybergarage/xml/b;->g()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v1}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/event/b;->c(Lorg/cybergarage/xml/b;)Lorg/cybergarage/upnp/event/c;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/event/PropertyList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public b(J)V
    .locals 3

    const-string v0, "SEQ"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/event/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/event/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SID"

    invoke-static {p1}, Lorg/cybergarage/upnp/event/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
