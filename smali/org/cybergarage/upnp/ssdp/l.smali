.class public Lorg/cybergarage/upnp/ssdp/l;
.super Lorg/cybergarage/upnp/ssdp/a;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Lorg/cybergarage/util/ListenerList;

.field private c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/a;-><init>()V

    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/l;->b:Lorg/cybergarage/util/ListenerList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/l;->c:Ljava/lang/Thread;

    invoke-virtual {p0, p1, p3}, Lorg/cybergarage/upnp/ssdp/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public a(Lorg/cybergarage/upnp/device/i;)V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/l;->b:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 3

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/l;->b:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/l;->b:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/i;

    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/i;->deviceSearchReceived(Lorg/cybergarage/upnp/ssdp/f;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ssdp/l;->a:Z

    :goto_0
    const/16 v0, 0x76c

    invoke-virtual {p0, p2, v0, p1}, Lorg/cybergarage/upnp/ssdp/l;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p1}, Lorg/cybergarage/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/cybergarage/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cybergarage/upnp/ssdp/l;->a:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot open a UDP Socket for IPv6 address on IPv4 interface or viceversa"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()V
    .locals 4

    const/16 v3, 0x3a

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.SSDPSearchSocket/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/l;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/l;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/l;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/l;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/l;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/l;->f()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/l;->c:Ljava/lang/Thread;

    return-void
.end method

.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/cybergarage/upnp/ssdp/l;->c:Ljava/lang/Thread;

    if-ne v1, v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/l;->g()Lorg/cybergarage/upnp/ssdp/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/cybergarage/upnp/ssdp/f;->r()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ssdp/l;->a(Lorg/cybergarage/upnp/ssdp/f;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    return-void
.end method
