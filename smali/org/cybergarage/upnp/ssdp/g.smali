.class public Lorg/cybergarage/upnp/ssdp/g;
.super Lorg/cybergarage/http/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/http/e;-><init>()V

    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/g;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(I)V
    .locals 3

    const-string v0, "Cache-Control"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max-age="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(I)V
    .locals 1

    const-string v0, "BOOTID.UPNP.ORG"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/g;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NT"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 1

    const-string v0, "NTS"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Location"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    const-string v0, "USN"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
