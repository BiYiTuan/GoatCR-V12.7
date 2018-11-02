.class public interface abstract Lcom/memo/cable/IController;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCurrentURI(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
.end method

.method public abstract getMaxVolumeValue(Lorg/cybergarage/upnp/Device;)I
.end method

.method public abstract getMediaDuration(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
.end method

.method public abstract getMediaInfo(Lorg/cybergarage/upnp/Device;)Lcom/memo/cable/MediaInfo;
.end method

.method public abstract getMinVolumeValue(Lorg/cybergarage/upnp/Device;)I
.end method

.method public abstract getMute(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
.end method

.method public abstract getPositionInfo(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
.end method

.method public abstract getTransportState(Lorg/cybergarage/upnp/Device;)Ljava/lang/String;
.end method

.method public abstract getVoice(Lorg/cybergarage/upnp/Device;)I
.end method

.method public abstract goon(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z
.end method

.method public abstract pause(Lorg/cybergarage/upnp/Device;)Z
.end method

.method public abstract play(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract seek(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z
.end method

.method public abstract setMute(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z
.end method

.method public abstract setVoice(Lorg/cybergarage/upnp/Device;I)Z
.end method

.method public abstract setWifi(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Z
.end method

.method public abstract stop(Lorg/cybergarage/upnp/Device;Z)Z
.end method
