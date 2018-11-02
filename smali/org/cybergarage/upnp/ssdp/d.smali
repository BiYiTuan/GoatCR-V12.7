.class public Lorg/cybergarage/upnp/ssdp/d;
.super Lorg/cybergarage/upnp/ssdp/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/g;-><init>()V

    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/d;->m(Ljava/lang/String;)V

    const-string v0, "*"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/d;->o(Ljava/lang/String;)V

    return-void
.end method
