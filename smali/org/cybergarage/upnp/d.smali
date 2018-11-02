.class public Lorg/cybergarage/upnp/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/cybergarage/xml/b;

.field private b:Ljava/lang/Object;

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "icon"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/d;-><init>(Lorg/cybergarage/xml/b;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/xml/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/d;->b:Ljava/lang/Object;

    iput-object v0, p0, Lorg/cybergarage/upnp/d;->c:[B

    iput-object p1, p0, Lorg/cybergarage/upnp/d;->a:Lorg/cybergarage/xml/b;

    return-void
.end method

.method public static a(Lorg/cybergarage/xml/b;)Z
    .locals 2

    const-string v0, "icon"

    invoke-virtual {p0}, Lorg/cybergarage/xml/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/d;->a:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/d;->c:[B

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/d;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/d;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/d;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

.method public d()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/d;->a()Lorg/cybergarage/xml/b;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/d;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/cybergarage/upnp/d;->c:[B

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/cybergarage/upnp/d;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v2, Lorg/cybergarage/upnp/d;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public g()[B
    .locals 4

    iget-object v0, p0, Lorg/cybergarage/upnp/d;->c:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Lorg/cybergarage/upnp/d;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/cybergarage/upnp/d;->c:[B

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/d;->c:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
