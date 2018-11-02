.class public Lorg/cybergarage/upnp/a/h;
.super Lorg/cybergarage/upnp/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/upnp/a/e;-><init>()V

    return-void
.end method

.method private m(Ljava/lang/String;)Lorg/cybergarage/xml/b;
    .locals 3

    new-instance v0, Lorg/cybergarage/xml/b;

    invoke-direct {v0}, Lorg/cybergarage/xml/b;-><init>()V

    const-string v1, "u"

    const-string v2, "QueryStateVariableResponse"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u"

    const-string v2, "urn:schemas-upnp-org:control-1-0"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    invoke-direct {v1}, Lorg/cybergarage/xml/b;-><init>()V

    const-string v2, "return"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    return-object v0
.end method


# virtual methods
.method public a(Lorg/cybergarage/upnp/f;)V
    .locals 2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/f;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/a/h;->d(I)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/h;->G()Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/a/h;->m(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/h;->F()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/a/h;->b(Lorg/cybergarage/xml/b;)V

    return-void
.end method
