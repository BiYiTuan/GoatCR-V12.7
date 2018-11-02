.class public Lorg/cybergarage/upnp/device/a;
.super Lorg/cybergarage/util/ThreadCore;


# instance fields
.field private a:Lorg/cybergarage/upnp/Device;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/Device;)V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/util/ThreadCore;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/device/a;->a(Lorg/cybergarage/upnp/Device;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/cybergarage/upnp/Device;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/device/a;->a:Lorg/cybergarage/upnp/Device;

    return-object v0
.end method

.method public a(Lorg/cybergarage/upnp/Device;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/device/a;->a:Lorg/cybergarage/upnp/Device;

    return-void
.end method

.method public run()V
    .locals 12

    invoke-virtual {p0}, Lorg/cybergarage/upnp/device/a;->a()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v1

    int-to-long v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/device/a;->isRunnable()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    const-wide/16 v4, 0x4

    div-long v4, v2, v4

    long-to-float v1, v2

    float-to-double v6, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->announce()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    return-void
.end method
