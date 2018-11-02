.class public Lorg/cybergarage/upnp/ssdp/k;
.super Lorg/cybergarage/upnp/ssdp/b;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lorg/cybergarage/upnp/c;

.field private b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/cybergarage/upnp/ssdp/b;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/k;->a:Lorg/cybergarage/upnp/c;

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/k;->b:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/k;->a(Lorg/cybergarage/upnp/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/ssdp/b;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/k;->a:Lorg/cybergarage/upnp/c;

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/k;->b:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ssdp/k;->a(Lorg/cybergarage/upnp/c;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/cybergarage/upnp/c;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/ssdp/k;->a:Lorg/cybergarage/upnp/c;

    return-void
.end method

.method public a(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/i;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### SSDPSearchResponseSocket post host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",port is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/cybergarage/upnp/ssdp/i;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ssdp/k;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;ILorg/cybergarage/upnp/ssdp/j;)Z
    .locals 1

    invoke-virtual {p3}, Lorg/cybergarage/upnp/ssdp/j;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ssdp/k;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public f()Lorg/cybergarage/upnp/c;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/k;->a:Lorg/cybergarage/upnp/c;

    return-object v0
.end method

.method public g()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.SSDPSearchResponseSocket/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/k;->a()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new deviceSearchResponseThread,name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/memo/TestXlog;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/cybergarage/upnp/ssdp/k;->b:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/cybergarage/upnp/ssdp/k;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/ssdp/k;->b:Ljava/lang/Thread;

    return-void
.end method

.method public run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/k;->f()Lorg/cybergarage/upnp/c;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/cybergarage/upnp/ssdp/k;->b:Ljava/lang/Thread;

    if-ne v2, v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ssdp/k;->e()Lorg/cybergarage/upnp/ssdp/f;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/c;->d(Lorg/cybergarage/upnp/ssdp/f;)V

    :cond_1
    const-string v2, "#### Socket searchResponseReceived ######,search response packet "

    invoke-static {v2}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
