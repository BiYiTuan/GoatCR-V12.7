.class public Lcom/memo/cable/SearchThread;
.super Ljava/lang/Thread;


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchThread"

.field private static final mFastInternalTime:I = 0x7d0

.field private static final mNormalInternalTime:I = 0x32c8

.field private static sDestIpList:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flag:Z

.field private isLongInternalTime:Z

.field private mControlPoint:Lorg/cybergarage/upnp/c;

.field private mDeviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

.field private mStartComplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    sput-object v0, Lcom/memo/cable/SearchThread;->sDestIpList:Ljava/util/concurrent/ConcurrentSkipListSet;

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/upnp/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/memo/cable/SearchThread;->flag:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/memo/cable/SearchThread;->isLongInternalTime:Z

    new-instance v0, Lcom/memo/cable/SearchThread$1;

    invoke-direct {v0, p0}, Lcom/memo/cable/SearchThread$1;-><init>(Lcom/memo/cable/SearchThread;)V

    iput-object v0, p0, Lcom/memo/cable/SearchThread;->mDeviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    iput-object p1, p0, Lcom/memo/cable/SearchThread;->mControlPoint:Lorg/cybergarage/upnp/c;

    iget-object v0, p0, Lcom/memo/cable/SearchThread;->mControlPoint:Lorg/cybergarage/upnp/c;

    iget-object v1, p0, Lcom/memo/cable/SearchThread;->mDeviceChangeListener:Lorg/cybergarage/upnp/device/DeviceChangeListener;

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/memo/cable/SearchThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/memo/cable/SearchThread;->isLongInternalTime:Z

    return p1
.end method

.method public static addRootDeviceIp(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/memo/cable/SearchThread;->sDestIpList:Ljava/util/concurrent/ConcurrentSkipListSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/memo/cable/SearchThread;->sDestIpList:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/memo/cable/SearchThread;->sDestIpList:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private searchDevices()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/memo/cable/SearchThread;->mStartComplete:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/memo/cable/SearchThread;->sDestIpList:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/memo/cable/SearchThread;->sDestIpList:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/memo/cable/SearchThread;->mControlPoint:Lorg/cybergarage/upnp/c;

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/memo/cable/SearchThread;->mControlPoint:Lorg/cybergarage/upnp/c;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/c;->d()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/DeviceList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/memo/cable/SearchThread;->isLongInternalTime:Z

    :cond_1
    iget-boolean v0, p0, Lcom/memo/cable/SearchThread;->isLongInternalTime:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x32c8

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/memo/cable/SearchThread;->mControlPoint:Lorg/cybergarage/upnp/c;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/c;->h()V

    const-string v0, "####device controlpoint search... ######"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/memo/cable/SearchThread;->mControlPoint:Lorg/cybergarage/upnp/c;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/c;->l()Z

    iget-object v0, p0, Lcom/memo/cable/SearchThread;->mControlPoint:Lorg/cybergarage/upnp/c;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/c;->k()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "####Device controlpoint start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "######"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/memo/cable/SearchThread;->mStartComplete:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x7d0

    :try_start_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method


# virtual methods
.method public awake()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reInit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/memo/cable/SearchThread;->mStartComplete:Z

    iput-boolean v0, p0, Lcom/memo/cable/SearchThread;->isLongInternalTime:Z

    return-void
.end method

.method public run()V
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lcom/memo/cable/SearchThread;->flag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/memo/cable/SearchThread;->mControlPoint:Lorg/cybergarage/upnp/c;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/memo/cable/SearchThread;->searchDevices()V

    goto :goto_0
.end method

.method public setLongInternal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/memo/cable/SearchThread;->isLongInternalTime:Z

    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/memo/cable/SearchThread;->flag:Z

    invoke-virtual {p0}, Lcom/memo/cable/SearchThread;->awake()V

    return-void
.end method
