.class public Lorg/cybergarage/upnp/ssdp/j;
.super Lorg/cybergarage/upnp/ssdp/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/h;-><init>()V

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/j;->d(I)V

    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/j;->c(I)V

    const-string v0, "Server"

    invoke-static {}, Lorg/cybergarage/upnp/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EXT"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
