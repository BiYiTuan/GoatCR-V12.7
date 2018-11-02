.class public Lorg/cybergarage/upnp/a/d;
.super Lorg/cybergarage/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/cybergarage/upnp/e;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->c()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-lt v4, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v4}, Lorg/cybergarage/upnp/a/d;->b(Ljava/lang/String;Z)V

    const-string v1, ""

    invoke-static {v0}, Lorg/cybergarage/http/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_6

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->c()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getURLBase()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->c()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLocation()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Lorg/cybergarage/http/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lorg/cybergarage/http/b;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/cybergarage/upnp/a/d;->c(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/a/d;->p(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/a/d;->d(I)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method public ab()Z
    .locals 1

    const-string v0, "urn:schemas-upnp-org:control-1-0#QueryStateVariable"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/a/d;->r(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
