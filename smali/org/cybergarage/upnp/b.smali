.class public Lorg/cybergarage/upnp/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/cybergarage/xml/b;

.field private b:Lorg/cybergarage/xml/b;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/cybergarage/upnp/b;->c:Ljava/lang/Object;

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "argument"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/b;->a:Lorg/cybergarage/xml/b;

    iput-object v2, p0, Lorg/cybergarage/upnp/b;->b:Lorg/cybergarage/xml/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/upnp/b;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/b;->c:Ljava/lang/Object;

    iput-object p1, p0, Lorg/cybergarage/upnp/b;->b:Lorg/cybergarage/xml/b;

    iput-object p2, p0, Lorg/cybergarage/upnp/b;->a:Lorg/cybergarage/xml/b;

    return-void
.end method

.method public static a(Lorg/cybergarage/xml/b;)Z
    .locals 2

    const-string v0, "argument"

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private h()Lorg/cybergarage/upnp/b/b;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/b;->a()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/b;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/b/b;

    invoke-direct {v0}, Lorg/cybergarage/upnp/b/b;-><init>()V

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/b/b;->b(Lorg/cybergarage/xml/b;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b;->a:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/b;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/b;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/b;->h()Lorg/cybergarage/upnp/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/b;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/b;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/b;->h()Lorg/cybergarage/upnp/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/b;->f()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
