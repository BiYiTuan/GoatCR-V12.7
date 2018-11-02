.class public Lorg/cybergarage/b/b;
.super Lorg/cybergarage/http/e;


# instance fields
.field private b:Lorg/cybergarage/xml/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/http/e;-><init>()V

    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/b/b;->h(Ljava/lang/String;)V

    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lorg/cybergarage/b/b;->m(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized Y()Lorg/cybergarage/xml/b;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/b/b;->b:Lorg/cybergarage/xml/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cybergarage/b/b;->b:Lorg/cybergarage/xml/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/cybergarage/b/b;->h()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Lorg/cybergarage/b/a;->b()Lorg/cybergarage/xml/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/c;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/b;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/b/b;->b:Lorg/cybergarage/xml/b;
    :try_end_1
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/cybergarage/b/b;->b:Lorg/cybergarage/xml/b;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lorg/cybergarage/xml/b;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/b/b;->b:Lorg/cybergarage/xml/b;

    return-void
.end method


# virtual methods
.method public U()V
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/b/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/b/b;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/cybergarage/b/b;->Y()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public V()Ljava/lang/String;
    .locals 1

    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lorg/cybergarage/b/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public W()Lorg/cybergarage/xml/b;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/b/b;->Y()Lorg/cybergarage/xml/b;

    move-result-object v0

    return-object v0
.end method

.method public X()Lorg/cybergarage/xml/b;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/b/b;->W()Lorg/cybergarage/xml/b;

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

.method public a(Lorg/cybergarage/xml/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cybergarage/b/b;->c(Lorg/cybergarage/xml/b;)V

    return-void
.end method

.method public b(Ljava/lang/String;IZ)Lorg/cybergarage/b/c;
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lorg/cybergarage/b/b;->a(Ljava/lang/String;IZ)Lorg/cybergarage/http/g;

    move-result-object v1

    new-instance v0, Lorg/cybergarage/b/c;

    invoke-direct {v0, v1}, Lorg/cybergarage/b/c;-><init>(Lorg/cybergarage/http/g;)V

    invoke-virtual {v0}, Lorg/cybergarage/b/c;->h()[B

    move-result-object v1

    array-length v2, v1

    if-gtz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {}, Lorg/cybergarage/b/a;->b()Lorg/cybergarage/xml/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/c;->parse(Ljava/io/InputStream;)Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/b/c;->a(Lorg/cybergarage/xml/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b(Lorg/cybergarage/xml/b;)V
    .locals 2

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/xml/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/b/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/b/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "SOAPACTION"

    invoke-virtual {p0, v2}, Lorg/cybergarage/b/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/b/b;->V()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
