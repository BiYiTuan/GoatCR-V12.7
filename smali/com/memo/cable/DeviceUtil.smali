.class public Lcom/memo/cable/DeviceUtil;
.super Ljava/lang/Object;


# static fields
.field private static final MEDIARENDER:Ljava/lang/String; = "tubicast"

.field private static final MEDIARENDER_DLNA:Ljava/lang/String; = "urn:schemas-upnp-org:device:MediaRenderer:1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMediaRenderDevice(Lorg/cybergarage/upnp/Device;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget-boolean v1, p0, Lorg/cybergarage/upnp/Device;->encryption:Z

    if-eqz v1, :cond_1

    const-string v1, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    iget-boolean v1, p0, Lorg/cybergarage/upnp/Device;->encryption:Z

    if-nez v1, :cond_2

    const-string v1, "tubicast"

    invoke-virtual {p0}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
