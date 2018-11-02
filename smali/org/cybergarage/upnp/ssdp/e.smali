.class public Lorg/cybergarage/upnp/ssdp/e;
.super Lorg/cybergarage/upnp/ssdp/a;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Z

.field private b:Lorg/cybergarage/upnp/c;

.field private c:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/a;-><init>()V

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/e;->b:Lorg/cybergarage/upnp/c;

    iput-object v2, p0, Lorg/cybergarage/upnp/ssdp/e;->c:Ljava/lang/Thread;

    const-string v0, "239.255.255.250"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cybergarage/upnp/ssdp/e;->a:Z

    invoke-static {p1}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/cybergarage/upnp/ssdp/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cybergarage/upnp/ssdp/e;->a:Z

    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/ssdp/e;->a(Ljava/lang/String;ILjava/lang/String;)Z

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ssdp/e;->a(Lorg/cybergarage/upnp/c;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/cybergarage/upnp/c;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/e;->b:Lorg/cybergarage/upnp/c;

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/ssdp/d;)Z
    .locals 3

    const-string v0, "239.255.255.250"

    iget-boolean v1, p0, Lorg/cybergarage/upnp/ssdp/e;->a:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lorg/cybergarage/upnp/ssdp/c;->a()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/16 v1, 0x76c

    invoke-virtual {p1, v0, v1}, Lorg/cybergarage/upnp/ssdp/d;->c(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ssdp/e;->a(Lorg/cybergarage/http/e;)Z

    move-result v0

    return v0
.end method

.method public h()Lorg/cybergarage/upnp/c;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/e;->b:Lorg/cybergarage/upnp/c;

    return-object v0
.end method

.method public i()V
    .locals 4

    const/16 v3, 0x3a

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.SSDPNotifySocket/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/e;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/e;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    const-string v1, "DeviceService deviceNotifyThread start"

    invoke-static {v1}, Lcom/memo/TestXlog;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/e;->c:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/e;->c:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/e;->f()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/e;->c:Ljava/lang/Thread;

    return-void
.end method

.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/e;->h()Lorg/cybergarage/upnp/c;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/e;->c:Ljava/lang/Thread;

    if-ne v2, v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->yield()V

    :try_start_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/e;->g()Lorg/cybergarage/upnp/ssdp/f;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/e;->d()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/f;->p()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalidate Multicast Received from IP "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " on "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### Error Invalidate Multicast Received from IP "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/f;->f()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "NOTIFY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "####Socket Notify package ######"

    invoke-static {v3}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/c;->c(Lorg/cybergarage/upnp/ssdp/f;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    return-void
.end method
