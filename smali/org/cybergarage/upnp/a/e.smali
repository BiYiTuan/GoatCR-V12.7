.class public Lorg/cybergarage/upnp/a/e;
.super Lorg/cybergarage/b/c;


# instance fields
.field private b:Lorg/cybergarage/upnp/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/b/c;-><init>()V

    new-instance v0, Lorg/cybergarage/upnp/h;

    invoke-direct {v0}, Lorg/cybergarage/upnp/h;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/a/e;->b:Lorg/cybergarage/upnp/h;

    invoke-static {}, Lorg/cybergarage/upnp/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/a/e;->k(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/b/c;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/cybergarage/b/c;-><init>(Lorg/cybergarage/b/c;)V

    new-instance v0, Lorg/cybergarage/upnp/h;

    invoke-direct {v0}, Lorg/cybergarage/upnp/h;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/a/e;->b:Lorg/cybergarage/upnp/h;

    return-void
.end method

.method private b(ILjava/lang/String;)Lorg/cybergarage/xml/b;
    .locals 5

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "s:Fault"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v2, "faultcode"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v2, "s:Client"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v2, "faultstring"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v2, "UPnPError"

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v2, "detail"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    new-instance v2, Lorg/cybergarage/xml/b;

    const-string v3, "UPnPError"

    invoke-direct {v2, v3}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v3, "xmlns"

    const-string v4, "urn:schemas-upnp-org:control-1-0"

    invoke-virtual {v2, v3, v4}, Lorg/cybergarage/xml/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v3, "errorCode"

    invoke-direct {v1, v3}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/cybergarage/xml/b;->a(I)V

    invoke-virtual {v2, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v3, "errorDescription"

    invoke-direct {v1, v3}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/cybergarage/xml/b;->b(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/a/e;->d(I)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/e;->G()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/a/e;->b(ILjava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/e;->F()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/a/e;->b(Lorg/cybergarage/xml/b;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    invoke-static {p1}, Lorg/cybergarage/upnp/h;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/a/e;->a(ILjava/lang/String;)V

    return-void
.end method
