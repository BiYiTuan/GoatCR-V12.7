.class public Lorg/cybergarage/upnp/event/g;
.super Lorg/cybergarage/http/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/http/g;-><init>()V

    invoke-static {}, Lorg/cybergarage/upnp/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/cybergarage/http/g;-><init>(Lorg/cybergarage/http/g;)V

    return-void
.end method


# virtual methods
.method public F()Ljava/lang/String;
    .locals 1

    const-string v0, "SID"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/event/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G()J
    .locals 2

    const-string v0, "TIMEOUT"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/event/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/event/e;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 3

    const-string v0, "TIMEOUT"

    invoke-static {p1, p2}, Lorg/cybergarage/upnp/event/e;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/event/g;->d(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/g;->a(J)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SID"

    invoke-static {p1}, Lorg/cybergarage/upnp/event/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/event/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
