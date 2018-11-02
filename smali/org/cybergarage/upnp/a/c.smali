.class public Lorg/cybergarage/upnp/a/c;
.super Lorg/cybergarage/upnp/a/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/cybergarage/upnp/a/e;-><init>()V

    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/b/c;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/a/e;-><init>(Lorg/cybergarage/b/c;)V

    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private I()Lorg/cybergarage/xml/b;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/c;->G()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->i()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lorg/cybergarage/upnp/a;)Lorg/cybergarage/xml/b;
    .locals 7

    invoke-virtual {p1}, Lorg/cybergarage/upnp/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/cybergarage/xml/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Response"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/a;->a()Lorg/cybergarage/upnp/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "xmlns:u"

    invoke-virtual {v0}, Lorg/cybergarage/upnp/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/cybergarage/xml/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/a;->d()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/b;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/b;->e()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/cybergarage/xml/b;

    invoke-direct {v5}, Lorg/cybergarage/xml/b;-><init>()V

    invoke-virtual {v4}, Lorg/cybergarage/upnp/b;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/cybergarage/upnp/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    goto :goto_1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public H()Lorg/cybergarage/upnp/ArgumentList;
    .locals 7

    new-instance v0, Lorg/cybergarage/upnp/ArgumentList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/a/c;->I()Lorg/cybergarage/xml/b;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/xml/b;->g()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/cybergarage/xml/b;->d()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/cybergarage/upnp/b;

    invoke-direct {v6, v5, v4}, Lorg/cybergarage/upnp/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Lorg/cybergarage/upnp/a;)V
    .locals 2

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/a/c;->d(I)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/c;->G()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/a/c;->b(Lorg/cybergarage/upnp/a;)Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/c;->F()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/a/c;->b(Lorg/cybergarage/xml/b;)V

    return-void
.end method
