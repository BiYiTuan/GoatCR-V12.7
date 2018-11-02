.class public Lorg/cybergarage/upnp/a/i;
.super Lorg/cybergarage/util/ThreadCore;


# instance fields
.field private a:Lorg/cybergarage/upnp/c;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/cybergarage/util/ThreadCore;-><init>()V

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/a/i;->a(Lorg/cybergarage/upnp/c;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/cybergarage/upnp/c;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/a/i;->a:Lorg/cybergarage/upnp/c;

    return-object v0
.end method

.method public a(Lorg/cybergarage/upnp/c;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/a/i;->a:Lorg/cybergarage/upnp/c;

    return-void
.end method

.method public run()V
    .locals 5

    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/i;->a()Lorg/cybergarage/upnp/c;

    move-result-object v0

    const-wide/32 v2, 0x1d4c0

    :goto_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/a/i;->isRunnable()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cybergarage/upnp/c;->c(Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    return-void
.end method
