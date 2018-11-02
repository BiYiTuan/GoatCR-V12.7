.class final Lcom/memo/sdk/MemoTVCastSDK$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/memo/cable/DeviceContainer$DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/memo/sdk/MemoTVCastSDK;
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
.method public onDeviceAdd(Lorg/cybergarage/upnp/Device;)V
    .locals 2

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getDeviceListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/memo/sdk/IMemoDeviceListener;

    invoke-interface {v0, p1}, Lcom/memo/sdk/IMemoDeviceListener;->onDeviceAdd(Lorg/cybergarage/upnp/Device;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDeviceRemove(Lorg/cybergarage/upnp/Device;)V
    .locals 2

    invoke-static {}, Lcom/memo/sdk/MemoTVCastSDK;->getDeviceListeners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/memo/sdk/IMemoDeviceListener;

    invoke-interface {v0, p1}, Lcom/memo/sdk/IMemoDeviceListener;->onDeviceRemove(Lorg/cybergarage/upnp/Device;)V

    goto :goto_0

    :cond_0
    return-void
.end method
