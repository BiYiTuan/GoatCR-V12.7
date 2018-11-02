.class public interface abstract Lcom/memo/cable/DeviceContainer$DeviceChangeListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/memo/cable/DeviceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceChangeListener"
.end annotation


# virtual methods
.method public abstract onDeviceAdd(Lorg/cybergarage/upnp/Device;)V
.end method

.method public abstract onDeviceRemove(Lorg/cybergarage/upnp/Device;)V
.end method
