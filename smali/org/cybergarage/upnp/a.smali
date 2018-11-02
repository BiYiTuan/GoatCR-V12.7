.class public Lorg/cybergarage/upnp/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/cybergarage/xml/b;

.field private b:Lorg/cybergarage/xml/b;

.field private c:Lorg/cybergarage/util/Mutex;

.field private d:Lorg/cybergarage/upnp/h;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/a;->c:Lorg/cybergarage/util/Mutex;

    new-instance v0, Lorg/cybergarage/upnp/h;

    invoke-direct {v0}, Lorg/cybergarage/upnp/h;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/a;->d:Lorg/cybergarage/upnp/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/a;->e:Ljava/lang/Object;

    iput-object p1, p0, Lorg/cybergarage/upnp/a;->a:Lorg/cybergarage/xml/b;

    iput-object p2, p0, Lorg/cybergarage/upnp/a;->b:Lorg/cybergarage/xml/b;

    return-void
.end method

.method private a(Lorg/cybergarage/upnp/a/e;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/a;->j()Lorg/cybergarage/upnp/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/a;->a(Lorg/cybergarage/upnp/a/e;)V

    return-void
.end method

.method public static a(Lorg/cybergarage/xml/b;)Z
    .locals 2

    const-string v0, "action"

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private h()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/a;->a:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method private i()V
    .locals 5

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a;->d()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/b;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/b;->e()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v4, ""

    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/b;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private j()Lorg/cybergarage/upnp/b/a;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a;->b()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/b;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/b/a;

    invoke-direct {v0}, Lorg/cybergarage/upnp/b/a;-><init>()V

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/b/a;->b(Lorg/cybergarage/xml/b;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/cybergarage/upnp/b;
    .locals 6

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a;->d()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a()Lorg/cybergarage/upnp/e;
    .locals 2

    new-instance v0, Lorg/cybergarage/upnp/e;

    invoke-direct {p0}, Lorg/cybergarage/upnp/a;->h()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cybergarage/upnp/e;-><init>(Lorg/cybergarage/xml/b;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    invoke-static {p1}, Lorg/cybergarage/upnp/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/a;->d:Lorg/cybergarage/upnp/h;

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/h;->b(I)V

    iget-object v0, p0, Lorg/cybergarage/upnp/a;->d:Lorg/cybergarage/upnp/h;

    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;)Lorg/cybergarage/upnp/b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lorg/cybergarage/upnp/a/a;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/a;->j()Lorg/cybergarage/upnp/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/a;->a(Lorg/cybergarage/upnp/a/a;)V

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/a/b;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a;->f()Lorg/cybergarage/upnp/a/a;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v2, Lorg/cybergarage/upnp/a/c;

    invoke-direct {v2}, Lorg/cybergarage/upnp/a/c;-><init>()V

    const/16 v3, 0x191

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/a;->a(I)V

    invoke-direct {p0}, Lorg/cybergarage/upnp/a;->i()V

    invoke-interface {v1, p0}, Lorg/cybergarage/upnp/a/a;->a(Lorg/cybergarage/upnp/a;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {v2, p0}, Lorg/cybergarage/upnp/a/c;->a(Lorg/cybergarage/upnp/a;)V

    :goto_1
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {v2}, Lorg/cybergarage/upnp/a/c;->E()V

    :cond_1
    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/a/b;->a(Lorg/cybergarage/http/g;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/a;->g()Lorg/cybergarage/upnp/h;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/h;->a()I

    move-result v3

    invoke-virtual {v1}, Lorg/cybergarage/upnp/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/cybergarage/upnp/a/c;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a;->d()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a;->e()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v3

    new-instance v4, Lorg/cybergarage/upnp/a/b;

    invoke-direct {v4}, Lorg/cybergarage/upnp/a/b;-><init>()V

    invoke-virtual {v4, p0, v3}, Lorg/cybergarage/upnp/a/b;->a(Lorg/cybergarage/upnp/a;Lorg/cybergarage/upnp/ArgumentList;)V

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    if-ne v3, v1, :cond_0

    invoke-virtual {v4}, Lorg/cybergarage/upnp/a/b;->U()V

    :cond_0
    invoke-virtual {v4, p1}, Lorg/cybergarage/upnp/a/b;->a(Z)Lorg/cybergarage/upnp/a/c;

    move-result-object v3

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v4

    if-ne v4, v1, :cond_1

    invoke-virtual {v3}, Lorg/cybergarage/upnp/a/c;->E()V

    :cond_1
    invoke-direct {p0, v3}, Lorg/cybergarage/upnp/a;->a(Lorg/cybergarage/upnp/a/e;)V

    invoke-virtual {v3}, Lorg/cybergarage/upnp/a/c;->A()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/a;->a(I)V

    invoke-virtual {v3}, Lorg/cybergarage/upnp/a/c;->B()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    return v0

    :cond_2
    invoke-virtual {v3}, Lorg/cybergarage/upnp/a/c;->H()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v3

    :try_start_0
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/ArgumentList;->setResArgs(Lorg/cybergarage/upnp/ArgumentList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const/16 v1, 0x192

    const-string v2, "Action succesfully delivered but invalid arguments returned."

    invoke-virtual {p0, v1, v2}, Lorg/cybergarage/upnp/a;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;)Lorg/cybergarage/upnp/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/a;->b:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;)Lorg/cybergarage/upnp/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/b;->g()I

    move-result v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a;->b()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/cybergarage/upnp/ArgumentList;
    .locals 7

    new-instance v0, Lorg/cybergarage/upnp/ArgumentList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a;->b()Lorg/cybergarage/xml/b;

    move-result-object v1

    const-string v2, "argumentList"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

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

    invoke-static {v4}, Lorg/cybergarage/upnp/b;->a(Lorg/cybergarage/xml/b;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Lorg/cybergarage/upnp/b;

    invoke-direct {p0}, Lorg/cybergarage/upnp/a;->h()Lorg/cybergarage/xml/b;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/cybergarage/upnp/b;-><init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public e()Lorg/cybergarage/upnp/ArgumentList;
    .locals 6

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a;->d()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ArgumentList;->size()I

    move-result v2

    new-instance v3, Lorg/cybergarage/upnp/ArgumentList;

    invoke-direct {v3}, Lorg/cybergarage/upnp/ArgumentList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(I)Lorg/cybergarage/upnp/b;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/b;->d()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method public f()Lorg/cybergarage/upnp/a/a;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/a;->j()Lorg/cybergarage/upnp/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/a;->a()Lorg/cybergarage/upnp/a/a;

    move-result-object v0

    return-object v0
.end method

.method public g()Lorg/cybergarage/upnp/h;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/a;->d:Lorg/cybergarage/upnp/h;

    return-object v0
.end method
