.class public Lorg/cybergarage/upnp/ssdp/i;
.super Lorg/cybergarage/upnp/ssdp/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "upnp:rootdevice"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/ssdp/i;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/cybergarage/upnp/ssdp/i;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/g;-><init>()V

    const-string v0, "M-SEARCH"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/i;->m(Ljava/lang/String;)V

    const-string v0, "*"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/i;->o(Ljava/lang/String;)V

    const-string v0, "ST"

    invoke-virtual {p0, v0, p1}, Lorg/cybergarage/upnp/ssdp/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MX"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MAN"

    const-string v1, "\"ssdp:discover\""

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public u(Ljava/lang/String;)V
    .locals 3

    const-string v0, "239.255.255.250"

    invoke-static {p1}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lorg/cybergarage/upnp/ssdp/c;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ssdp/i;->c(Ljava/lang/String;I)V

    return-void
.end method
