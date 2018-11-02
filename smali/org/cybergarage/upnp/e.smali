.class public Lorg/cybergarage/upnp/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/cybergarage/xml/b;

.field private b:Lorg/cybergarage/util/Mutex;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "service"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/e;-><init>(Lorg/cybergarage/xml/b;)V

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "specVersion"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v2, "major"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v2, "minor"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v2, "scpd"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v2, "xmlns"

    const-string v3, "urn:schemas-upnp-org:service-1-0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->v()Lorg/cybergarage/upnp/b/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/b/e;->a(Lorg/cybergarage/xml/b;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/e;->b:Lorg/cybergarage/util/Mutex;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/e;->c:Ljava/lang/Object;

    iput-object p1, p0, Lorg/cybergarage/upnp/e;->a:Lorg/cybergarage/xml/b;

    return-void
.end method

.method private a(Ljava/io/File;)Lorg/cybergarage/xml/b;
    .locals 1

    invoke-static {}, Lorg/cybergarage/upnp/g;->d()Lorg/cybergarage/xml/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/c;->parse(Ljava/io/File;)Lorg/cybergarage/xml/b;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/net/URL;)Lorg/cybergarage/xml/b;
    .locals 4

    invoke-static {}, Lorg/cybergarage/upnp/g;->d()Lorg/cybergarage/xml/c;

    move-result-object v2

    invoke-static {p1}, Lorg/cybergarage/util/HttpUtil;->getContent(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ISO-8859-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/StringUtil;->edsReturnBuffer([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lorg/cybergarage/xml/c;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_1

    invoke-static {p1, v1}, Lorg/cybergarage/http/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private a(Lorg/cybergarage/upnp/event/d;Lorg/cybergarage/upnp/f;Z)Z
    .locals 5

    invoke-virtual {p2}, Lorg/cybergarage/upnp/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/cybergarage/upnp/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/d;->e()I

    move-result v3

    new-instance v4, Lorg/cybergarage/upnp/event/b;

    invoke-direct {v4}, Lorg/cybergarage/upnp/event/b;-><init>()V

    invoke-virtual {v4, p1, v0, v1}, Lorg/cybergarage/upnp/event/b;->a(Lorg/cybergarage/upnp/event/d;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v4, v2, v3, p3}, Lorg/cybergarage/upnp/event/b;->a(Ljava/lang/String;IZ)Lorg/cybergarage/http/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/g;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/event/d;->j()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lorg/cybergarage/xml/b;)Z
    .locals 2

    const-string v0, "service"

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private s()Lorg/cybergarage/xml/b;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    goto :goto_0
.end method

.method private t()Lorg/cybergarage/xml/b;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->b()Lorg/cybergarage/xml/b;

    move-result-object v0

    return-object v0
.end method

.method private u()Lorg/cybergarage/xml/b;
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->v()Lorg/cybergarage/upnp/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/b/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->c()Lorg/cybergarage/upnp/Device;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    invoke-direct {p0, v6}, Lorg/cybergarage/upnp/e;->a(Ljava/io/File;)Lorg/cybergarage/xml/b;
    :try_end_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/b/e;->a(Lorg/cybergarage/xml/b;)V

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Lorg/cybergarage/xml/ParserException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/Device;->getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/e;->a(Ljava/net/URL;)Lorg/cybergarage/xml/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/b/e;->a(Lorg/cybergarage/xml/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getDescriptionFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lorg/cybergarage/http/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/e;->a(Ljava/io/File;)Lorg/cybergarage/xml/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private v()Lorg/cybergarage/upnp/b/e;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/xml/b;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/b/e;

    invoke-direct {v0}, Lorg/cybergarage/upnp/b/e;-><init>()V

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/b/e;->b(Lorg/cybergarage/xml/b;)V

    :cond_0
    return-object v0
.end method

.method private w()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->b()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/e;->a:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->v()Lorg/cybergarage/upnp/b/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/cybergarage/upnp/b/e;->a(J)V

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/a/a;)V
    .locals 4

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->l()Lorg/cybergarage/upnp/ActionList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ActionList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/a;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/a;->a(Lorg/cybergarage/upnp/a/a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lorg/cybergarage/upnp/a/f;)V
    .locals 4

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->m()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/f;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/cybergarage/upnp/f;->a(Lorg/cybergarage/upnp/a/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lorg/cybergarage/upnp/event/d;)V
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->n()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/event/SubscriberList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/f;Z)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->n()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    new-array v4, v3, [Lorg/cybergarage/upnp/event/d;

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/d;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v5, v4, v1

    if-nez v5, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lorg/cybergarage/upnp/event/d;->g()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/e;->b(Lorg/cybergarage/upnp/event/d;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    new-array v4, v3, [Lorg/cybergarage/upnp/event/d;

    move v1, v0

    :goto_3
    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/d;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v0, v3, :cond_7

    aget-object v1, v4, v0

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-direct {p0, v1, p1, p2}, Lorg/cybergarage/upnp/e;->a(Lorg/cybergarage/upnp/event/d;Lorg/cybergarage/upnp/f;Z)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_5

    :cond_7
    return-void
.end method

.method public a(Z)V
    .locals 6

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->m()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/f;

    move-result-object v3

    invoke-virtual {v3}, Lorg/cybergarage/upnp/f;->f()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v3, p1}, Lorg/cybergarage/upnp/e;->a(Lorg/cybergarage/upnp/f;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/cybergarage/upnp/ssdp/f;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->k()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->b()Lorg/cybergarage/upnp/Device;

    move-result-object v2

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->w()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lorg/cybergarage/upnp/device/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v0, :cond_2

    invoke-virtual {v2, p1, v3, v4}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/f;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/cybergarage/upnp/device/h;->e(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {v2, p1, v3, v4}, Lorg/cybergarage/upnp/Device;->postSearchResponse(Lorg/cybergarage/upnp/ssdp/f;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public b()Lorg/cybergarage/upnp/Device;
    .locals 3

    new-instance v0, Lorg/cybergarage/upnp/Device;

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->t()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->s()Lorg/cybergarage/xml/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V

    return-object v0
.end method

.method public b(Lorg/cybergarage/upnp/event/d;)V
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->n()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/event/SubscriberList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Lorg/cybergarage/upnp/Device;
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->b()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "serviceType"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;
    .locals 5

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->l()Lorg/cybergarage/upnp/ActionList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ActionList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ActionList;->getAction(I)Lorg/cybergarage/upnp/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/a;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "serviceId"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lorg/cybergarage/upnp/f;
    .locals 6

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->m()Lorg/cybergarage/upnp/ServiceStateTable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ServiceStateTable;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ServiceStateTable;->getStateVariable(I)Lorg/cybergarage/upnp/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/f;->d()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public f()V
    .locals 3

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->u()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/upnp/g;->a(Ljava/lang/String;)I

    move-result v1

    const-string v2, "configId"

    invoke-virtual {v0, v2, v1}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/e;->e(Ljava/lang/String;)Lorg/cybergarage/upnp/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 2

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->u()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "configId"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->f(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "SCPDURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->c()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->w()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->b()Lorg/cybergarage/upnp/Device;

    move-result-object v3

    new-instance v4, Lorg/cybergarage/upnp/ssdp/d;

    invoke-direct {v4}, Lorg/cybergarage/upnp/ssdp/d;-><init>()V

    invoke-static {}, Lorg/cybergarage/upnp/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cybergarage/upnp/ssdp/d;->k(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v3

    invoke-virtual {v4, v3}, Lorg/cybergarage/upnp/ssdp/d;->f(I)V

    invoke-virtual {v4, v0}, Lorg/cybergarage/upnp/ssdp/d;->s(Ljava/lang/String;)V

    const-string v0, "ssdp:alive"

    invoke-virtual {v4, v0}, Lorg/cybergarage/upnp/ssdp/d;->r(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/cybergarage/upnp/ssdp/d;->q(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/ssdp/d;->t(Ljava/lang/String;)V

    new-instance v0, Lorg/cybergarage/upnp/ssdp/e;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/ssdp/e;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    invoke-virtual {v0, v4}, Lorg/cybergarage/upnp/ssdp/e;->a(Lorg/cybergarage/upnp/ssdp/d;)Z

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "controlURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->w()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/cybergarage/upnp/ssdp/d;

    invoke-direct {v2}, Lorg/cybergarage/upnp/ssdp/d;-><init>()V

    const-string v3, "ssdp:byebye"

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/ssdp/d;->r(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/ssdp/d;->q(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ssdp/d;->t(Ljava/lang/String;)V

    new-instance v0, Lorg/cybergarage/upnp/ssdp/e;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/ssdp/e;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/cybergarage/upnp/Device;->notifyWait()V

    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/ssdp/e;->a(Lorg/cybergarage/upnp/ssdp/d;)Z

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "eventSubURL"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/String;)Lorg/cybergarage/upnp/event/d;
    .locals 6

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->n()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/event/SubscriberList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/event/SubscriberList;->getSubscriber(I)Lorg/cybergarage/upnp/event/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/d;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->v()Lorg/cybergarage/upnp/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/b/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k()[B
    .locals 3

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->u()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public l()Lorg/cybergarage/upnp/ActionList;
    .locals 7

    new-instance v0, Lorg/cybergarage/upnp/ActionList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/ActionList;-><init>()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->u()Lorg/cybergarage/xml/b;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string v2, "actionList"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/cybergarage/xml/b;->g()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/upnp/a;->a(Lorg/cybergarage/xml/b;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Lorg/cybergarage/upnp/a;

    iget-object v6, p0, Lorg/cybergarage/upnp/e;->a:Lorg/cybergarage/xml/b;

    invoke-direct {v5, v6, v4}, Lorg/cybergarage/upnp/a;-><init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V

    invoke-virtual {v0, v5}, Lorg/cybergarage/upnp/ActionList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public m()Lorg/cybergarage/upnp/ServiceStateTable;
    .locals 7

    new-instance v0, Lorg/cybergarage/upnp/ServiceStateTable;

    invoke-direct {v0}, Lorg/cybergarage/upnp/ServiceStateTable;-><init>()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->u()Lorg/cybergarage/xml/b;

    move-result-object v1

    const-string v2, "serviceStateTable"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->a()Lorg/cybergarage/xml/b;

    move-result-object v3

    invoke-virtual {v2}, Lorg/cybergarage/xml/b;->g()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {v2, v1}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v5

    invoke-static {v5}, Lorg/cybergarage/upnp/f;->a(Lorg/cybergarage/xml/b;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Lorg/cybergarage/upnp/f;

    invoke-direct {v6, v3, v5}, Lorg/cybergarage/upnp/f;-><init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V

    invoke-virtual {v0, v6}, Lorg/cybergarage/upnp/ServiceStateTable;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public n()Lorg/cybergarage/upnp/event/SubscriberList;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->v()Lorg/cybergarage/upnp/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/e;->b()Lorg/cybergarage/upnp/event/SubscriberList;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/e;->v()Lorg/cybergarage/upnp/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/b/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/e;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/e;->a(J)V

    return-void
.end method

.method public q()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/StringUtil;->hasData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/e;->q()Z

    move-result v0

    return v0
.end method
