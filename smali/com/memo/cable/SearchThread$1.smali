.class Lcom/memo/cable/SearchThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cybergarage/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/memo/cable/SearchThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/memo/cable/SearchThread;


# direct methods
.method constructor <init>(Lcom/memo/cable/SearchThread;)V
    .locals 0

    iput-object p1, p0, Lcom/memo/cable/SearchThread$1;->this$0:Lcom/memo/cable/SearchThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceAdded(Lorg/cybergarage/upnp/Device;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####Device control point add a device..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/f;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/memo/cable/SearchThread;->addRootDeviceIp(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/memo/cable/SearchThread$1;->this$0:Lcom/memo/cable/SearchThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/memo/cable/SearchThread;->access$002(Lcom/memo/cable/SearchThread;Z)Z

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/memo/cable/DeviceContainer;->addDevice(Lorg/cybergarage/upnp/Device;)V

    return-void
.end method

.method public deviceRemoved(Lorg/cybergarage/upnp/Device;)V
    .locals 2

    const-string v0, "####Device control point remove a device######"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/memo/cable/DeviceContainer;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/cable/DeviceContainer;->getDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/memo/cable/DeviceContainer;->getInstance()Lcom/memo/cable/DeviceContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/memo/cable/DeviceContainer;->getDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/memo/cable/SearchThread$1;->this$0:Lcom/memo/cable/SearchThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/memo/cable/SearchThread;->access$002(Lcom/memo/cable/SearchThread;Z)Z

    :cond_0
    return-void
.end method
