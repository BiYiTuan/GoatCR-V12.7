.class public Lorg/cybergarage/upnp/a/g;
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

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/a/g;->a(Lorg/cybergarage/http/e;)V

    return-void
.end method

.method private Z()Lorg/cybergarage/xml/b;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/g;->X()Lorg/cybergarage/xml/b;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/xml/b;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/cybergarage/xml/b;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lorg/cybergarage/xml/b;->c(I)Lorg/cybergarage/xml/b;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/a/g;->Z()Lorg/cybergarage/xml/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/xml/b;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
