.class public Lorg/cybergarage/upnp/f;
.super Lorg/cybergarage/upnp/b/d;


# instance fields
.field private a:Lorg/cybergarage/xml/b;

.field private b:Lorg/cybergarage/xml/b;

.field private c:Lorg/cybergarage/upnp/h;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cybergarage/upnp/b/d;-><init>()V

    new-instance v0, Lorg/cybergarage/upnp/h;

    invoke-direct {v0}, Lorg/cybergarage/upnp/h;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/f;->c:Lorg/cybergarage/upnp/h;

    iput-object v1, p0, Lorg/cybergarage/upnp/f;->d:Ljava/lang/Object;

    iput-object v1, p0, Lorg/cybergarage/upnp/f;->b:Lorg/cybergarage/xml/b;

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "stateVariable"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/f;->a:Lorg/cybergarage/xml/b;

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/b/d;-><init>()V

    new-instance v0, Lorg/cybergarage/upnp/h;

    invoke-direct {v0}, Lorg/cybergarage/upnp/h;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/f;->c:Lorg/cybergarage/upnp/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/f;->d:Ljava/lang/Object;

    iput-object p1, p0, Lorg/cybergarage/upnp/f;->b:Lorg/cybergarage/xml/b;

    iput-object p2, p0, Lorg/cybergarage/upnp/f;->a:Lorg/cybergarage/xml/b;

    return-void
.end method

.method public static a(Lorg/cybergarage/xml/b;)Z
    .locals 2

    const-string v0, "stateVariable"

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/f;->b:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    invoke-static {p1}, Lorg/cybergarage/upnp/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/f;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/f;->c:Lorg/cybergarage/upnp/h;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/h;->b(I)V

    iget-object v0, p0, Lorg/cybergarage/upnp/f;->c:Lorg/cybergarage/upnp/h;

    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->c()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->g()Lorg/cybergarage/upnp/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/f;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->g()Lorg/cybergarage/upnp/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/f;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->b()Lorg/cybergarage/upnp/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, p2}, Lorg/cybergarage/upnp/e;->a(Lorg/cybergarage/upnp/f;Z)V

    goto :goto_0
.end method

.method public a(Lorg/cybergarage/upnp/a/f;)V
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->g()Lorg/cybergarage/upnp/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/f;->a(Lorg/cybergarage/upnp/a/f;)V

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/f;Z)V
    .locals 1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/f;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/f;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/cybergarage/upnp/f;->a(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/f;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/f;->f()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/f;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->c()Lorg/cybergarage/xml/b;

    move-result-object v1

    const-string v2, "sendEvents"

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/cybergarage/xml/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public a(Lorg/cybergarage/upnp/a/g;Z)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->i()Lorg/cybergarage/upnp/a/f;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Lorg/cybergarage/upnp/a/h;

    invoke-direct {v2}, Lorg/cybergarage/upnp/a/h;-><init>()V

    new-instance v3, Lorg/cybergarage/upnp/f;

    invoke-direct {v3}, Lorg/cybergarage/upnp/f;-><init>()V

    invoke-virtual {v3, p0, p2}, Lorg/cybergarage/upnp/f;->a(Lorg/cybergarage/upnp/f;Z)V

    const-string v4, ""

    invoke-virtual {v3, v4, p2}, Lorg/cybergarage/upnp/f;->a(Ljava/lang/String;Z)V

    const/16 v4, 0x194

    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/f;->a(I)V

    invoke-interface {v1, v3}, Lorg/cybergarage/upnp/a/f;->a(Lorg/cybergarage/upnp/f;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/a/h;->a(Lorg/cybergarage/upnp/f;)V

    :goto_1
    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/a/g;->a(Lorg/cybergarage/http/g;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lorg/cybergarage/upnp/f;->j()Lorg/cybergarage/upnp/h;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/h;->a()I

    move-result v3

    invoke-virtual {v1}, Lorg/cybergarage/upnp/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/cybergarage/upnp/a/h;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public b()Lorg/cybergarage/upnp/e;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->a()Lorg/cybergarage/xml/b;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/cybergarage/upnp/e;

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/e;-><init>(Lorg/cybergarage/xml/b;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->c()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1, p1}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/f;->a:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->c()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->c()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "dataType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->c()Lorg/cybergarage/xml/b;

    move-result-object v2

    const-string v3, "sendEvents"

    invoke-virtual {v2, v3}, Lorg/cybergarage/xml/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public g()Lorg/cybergarage/upnp/b/f;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->c()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/b;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/b/f;

    invoke-direct {v0}, Lorg/cybergarage/upnp/b/f;-><init>()V

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/b/f;->b(Lorg/cybergarage/xml/b;)V

    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->g()Lorg/cybergarage/upnp/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lorg/cybergarage/upnp/a/f;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/f;->g()Lorg/cybergarage/upnp/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/f;->b()Lorg/cybergarage/upnp/a/f;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/cybergarage/upnp/h;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/f;->c:Lorg/cybergarage/upnp/h;

    return-object v0
.end method
