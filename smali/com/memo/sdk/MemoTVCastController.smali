.class public Lcom/memo/sdk/MemoTVCastController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/memo/cable/IController;


# static fields
.field private static final AVTransport1:Ljava/lang/String; = "urn:schemas-upnp-org:service:AVTransport:1"

.field private static final Play:Ljava/lang/String; = "Play"

.field private static final RenderingControl:Ljava/lang/String; = "urn:schemas-upnp-org:service:RenderingControl:1"

.field private static final SetAVTransportURI:Ljava/lang/String; = "SetAVTransportURI"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentURI(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "GetMediaInfo"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "CurrentURI"

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxVolumeValue(Lorg/cybergarage/upnp/Device;)I
    .locals 2

    const-string v0, "MaxValue"

    invoke-virtual {p0, p1, v0}, Lcom/memo/sdk/MemoTVCastController;->getVolumeDbRange(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getMediaDuration(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "GetMediaInfo"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "MediaDuration"

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaInfo(Lorg/cybergarage/upnp/Device;)Lcom/memo/cable/MediaInfo;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "GetMediaInfo"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/memo/cable/MediaInfo;

    invoke-direct {v0}, Lcom/memo/cable/MediaInfo;-><init>()V

    const-string v2, "MediaDuration"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/memo/cable/MediaInfo;->duration:Ljava/lang/String;

    const-string v2, "CurrentURIMetaData"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/memo/cable/MediaInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMinVolumeValue(Lorg/cybergarage/upnp/Device;)I
    .locals 2

    const-string v0, "MinValue"

    invoke-virtual {p0, p1, v0}, Lcom/memo/sdk/MemoTVCastController;->getVolumeDbRange(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getMute(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "GetMute"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Channel"

    const-string v2, "Master"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->a(Z)Z

    const-string v0, "CurrentMute"

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionInfo(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "GetPositionInfo"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "AbsTime"

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTransportState(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "GetTransportInfo"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "CurrentTransportState"

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoice(Lorg/cybergarage/upnp/Device;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "GetVolume"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Channel"

    const-string v3, "Master"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "CurrentVolume"

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->c(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getVolumeDbRange(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "GetVolumeDBRange"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Channel"

    const-string v3, "Master"

    invoke-virtual {v1, v2, v3}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p2}, Lorg/cybergarage/upnp/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public goon(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "Seek"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "InstanceID"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Unit"

    const-string v4, "ABS_TIME"

    invoke-virtual {v2, v3, v4}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Target"

    invoke-virtual {v2, v3, p2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/a;->a(Z)Z

    const-string v2, "Play"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    invoke-virtual {v1, v2, v0}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;I)V

    const-string v0, "Speed"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public pause(Lorg/cybergarage/upnp/Device;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "Pause"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    invoke-virtual {v1, v2, v0}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;I)V

    iget-boolean v0, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public play(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "SetAVTransportURI"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "Play"

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "InstanceID"

    invoke-virtual {v2, v3, v0}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;I)V

    const-string v3, "CurrentURI"

    invoke-virtual {v2, v3, p2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CurrentURIMetaData"

    invoke-virtual {v2, v3, p3}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "InstanceID"

    invoke-virtual {v1, v2, v0}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;I)V

    const-string v0, "Speed"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public seek(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "Seek"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Unit"

    const-string v2, "ABS_TIME"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Target"

    invoke-virtual {v1, v0, p2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unit"

    const-string v2, "REL_TIME"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Target"

    invoke-virtual {v1, v0, p2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setMute(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "SetMute"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Channel"

    const-string v2, "Master"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DesiredMute"

    invoke-virtual {v1, v0, p2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setVoice(Lorg/cybergarage/upnp/Device;I)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "SetVolume"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "InstanceID"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Channel"

    const-string v2, "Master"

    invoke-virtual {v1, v0, v2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DesiredVolume"

    invoke-virtual {v1, v0, p2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;I)V

    iget-boolean v0, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public setWifi(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "SetWifi"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    invoke-virtual {v1, v2, v0}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;I)V

    const-string v0, "Parameters"

    invoke-virtual {v1, v0, p2}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public stop(Lorg/cybergarage/upnp/Device;Z)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/e;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "Stop"

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/e;->d(Ljava/lang/String;)Lorg/cybergarage/upnp/a;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InstanceID"

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v2, v0}, Lorg/cybergarage/upnp/a;->a(Ljava/lang/String;I)V

    iget-boolean v0, p1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/a;->a(Z)Z

    move-result v0

    goto :goto_0
.end method
