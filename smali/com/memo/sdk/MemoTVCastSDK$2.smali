.class final Lcom/memo/sdk/MemoTVCastSDK$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cybergarage/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/memo/sdk/MemoTVCastSDK;->getControlPoint()Lorg/cybergarage/upnp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceAdded(Lorg/cybergarage/upnp/Device;)V
    .locals 1

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/memo/cable/DeviceContainer;->addDevice(Lorg/cybergarage/upnp/Device;)V

    return-void
.end method

.method public deviceRemoved(Lorg/cybergarage/upnp/Device;)V
    .locals 0

    return-void
.end method
