.class public Lcom/memo/cable/DeviceContainer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/memo/cable/DeviceContainer$DeviceChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceContainer"

.field private static final mDeviceContainer:Lcom/memo/cable/DeviceContainer;


# instance fields
.field private mDeviceChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/memo/cable/DeviceContainer$DeviceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/cybergarage/upnp/Device;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedDevice:Lorg/cybergarage/upnp/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/memo/cable/DeviceContainer;

    invoke-direct {v0}, Lcom/memo/cable/DeviceContainer;-><init>()V

    sput-object v0, Lcom/memo/cable/DeviceContainer;->mDeviceContainer:Lcom/memo/cable/DeviceContainer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDeviceChangeListenerList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/memo/cable/DeviceContainer;
    .locals 1

    sget-object v0, Lcom/memo/cable/DeviceContainer;->mDeviceContainer:Lcom/memo/cable/DeviceContainer;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/memo/cable/DeviceUtil;->isMediaRenderDevice(Lorg/cybergarage/upnp/Device;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->d(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "####addDevice Chipid is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getChipId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "######"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/memo/cable/ChipidChecker;->getInstace()Lcom/memo/cable/ChipidChecker;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getChipId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/memo/cable/ChipidChecker;->checkChipid(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/memo/cable/DeviceContainer;->setSelectedDevice(Lorg/cybergarage/upnp/Device;)V

    :cond_4
    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDeviceChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/memo/cable/DeviceContainer$DeviceChangeListener;

    invoke-interface {v0, p1}, Lcom/memo/cable/DeviceContainer$DeviceChangeListener;->onDeviceAdd(Lorg/cybergarage/upnp/Device;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/memo/cable/DeviceContainer;->mSelectedDevice:Lorg/cybergarage/upnp/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/cybergarage/upnp/Device;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedDevice()Lorg/cybergarage/upnp/Device;
    .locals 1

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mSelectedDevice:Lorg/cybergarage/upnp/Device;

    return-object v0
.end method

.method public registDeviceChangeListener(Lcom/memo/cable/DeviceContainer$DeviceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDeviceChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDeviceChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized removeDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuid:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    iget-object v1, p0, Lcom/memo/cable/DeviceContainer;->mSelectedDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/memo/cable/DeviceContainer;->mSelectedDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/memo/cable/DeviceContainer;->mSelectedDevice:Lorg/cybergarage/upnp/Device;

    :cond_0
    iget-object v1, p0, Lcom/memo/cable/DeviceContainer;->mDeviceChangeListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/memo/cable/DeviceContainer$DeviceChangeListener;

    invoke-interface {v1, v0}, Lcom/memo/cable/DeviceContainer$DeviceChangeListener;->onDeviceRemove(Lorg/cybergarage/upnp/Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    monitor-exit p0

    return-object v0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public declared-synchronized removeDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/memo/cable/DeviceUtil;->isMediaRenderDevice(Lorg/cybergarage/upnp/Device;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDevice = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDevices:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    iget-object v2, p0, Lcom/memo/cable/DeviceContainer;->mSelectedDevice:Lorg/cybergarage/upnp/Device;

    if-eqz v2, :cond_5

    iget-object v1, p0, Lcom/memo/cable/DeviceContainer;->mSelectedDevice:Lorg/cybergarage/upnp/Device;

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/memo/cable/DeviceContainer;->mSelectedDevice:Lorg/cybergarage/upnp/Device;

    :cond_3
    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDeviceChangeListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/memo/cable/DeviceContainer$DeviceChangeListener;

    invoke-interface {v0, p1}, Lcom/memo/cable/DeviceContainer$DeviceChangeListener;->onDeviceRemove(Lorg/cybergarage/upnp/Device;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public setSelectedDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 0

    iput-object p1, p0, Lcom/memo/cable/DeviceContainer;->mSelectedDevice:Lorg/cybergarage/upnp/Device;

    return-void
.end method

.method public unRegistDeviceChangeListener(Lcom/memo/cable/DeviceContainer$DeviceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDeviceChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/cable/DeviceContainer;->mDeviceChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
