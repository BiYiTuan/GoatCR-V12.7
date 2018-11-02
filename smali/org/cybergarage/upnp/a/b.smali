.class public Lorg/cybergarage/upnp/a/b;
.super Lorg/cybergarage/upnp/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/upnp/a/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/e;)V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/upnp/a/d;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/a/b;->a(Lorg/cybergarage/http/e;)V

    return-void
.end method

.method private a(Lorg/cybergarage/upnp/e;Lorg/cybergarage/upnp/a;Lorg/cybergarage/upnp/ArgumentList;)Lorg/cybergarage/xml/b;
    .locals 6

    invoke-virtual {p2}, Lorg/cybergarage/upnp/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/cybergarage/xml/b;

    invoke-direct {v2}, Lorg/cybergarage/xml/b;-><init>()V

    const-string v3, "u"

    invoke-virtual {v2, v3, v0}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "u"

    invoke-virtual {v2, v0, v1}, Lorg/cybergarage/xml/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p3, v0}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/b;

    move-result-object v3

    new-instance v4, Lorg/cybergarage/xml/b;

    invoke-direct {v4}, Lorg/cybergarage/xml/b;-><init>()V

    invoke-virtual {v3}, Lorg/cybergarage/upnp/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/cybergarage/upnp/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public Y()Lorg/cybergarage/xml/b;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/b;->X()Lorg/cybergarage/xml/b;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/xml/b;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v0

    goto :goto_0
.end method

.method public Z()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/b;->Y()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Z)Lorg/cybergarage/upnp/a/c;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/b;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/b;->K()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/a/b;->b(Ljava/lang/String;IZ)Lorg/cybergarage/b/c;

    move-result-object v0

    new-instance v1, Lorg/cybergarage/upnp/a/c;

    invoke-direct {v1, v0}, Lorg/cybergarage/upnp/a/c;-><init>(Lorg/cybergarage/b/c;)V

    return-object v1
.end method

.method public a(Lorg/cybergarage/upnp/a;Lorg/cybergarage/upnp/ArgumentList;)V
    .locals 4

    invoke-virtual {p1}, Lorg/cybergarage/upnp/a;->a()Lorg/cybergarage/upnp/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/a/b;->a(Lorg/cybergarage/upnp/e;)V

    invoke-static {}, Lorg/cybergarage/b/a;->a()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/a/b;->a(Lorg/cybergarage/xml/b;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/b;->W()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/b;->X()Lorg/cybergarage/xml/b;

    move-result-object v2

    invoke-direct {p0, v0, p1, p2}, Lorg/cybergarage/upnp/a/b;->a(Lorg/cybergarage/upnp/e;Lorg/cybergarage/upnp/a;Lorg/cybergarage/upnp/ArgumentList;)Lorg/cybergarage/xml/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/a/b;->b(Lorg/cybergarage/xml/b;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/a;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/a/b;->q(Ljava/lang/String;)V

    return-void
.end method

.method public aa()Lorg/cybergarage/upnp/ArgumentList;
    .locals 7

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/b;->Y()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/b;->g()I

    move-result v2

    new-instance v3, Lorg/cybergarage/upnp/ArgumentList;

    invoke-direct {v3}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    new-instance v4, Lorg/cybergarage/upnp/b;

    invoke-direct {v4}, Lorg/cybergarage/upnp/b;-><init>()V

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v5

    invoke-virtual {v5}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/cybergarage/upnp/b;->a(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/cybergarage/xml/b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cybergarage/upnp/b;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method
