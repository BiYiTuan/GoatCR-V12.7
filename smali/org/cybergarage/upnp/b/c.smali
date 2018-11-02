.class public Lorg/cybergarage/upnp/b/c;
.super Lorg/cybergarage/upnp/b/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/File;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lorg/cybergarage/http/HTTPServerList;

.field private f:[Ljava/net/InetAddress;

.field private g:I

.field private h:Lorg/cybergarage/util/ListenerList;

.field private i:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:[Ljava/net/InetAddress;

.field private n:Lorg/cybergarage/upnp/ssdp/f;

.field private o:Lorg/cybergarage/upnp/device/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cybergarage/upnp/b/d;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/upnp/b/c;->a:Ljava/lang/String;

    iput-object v1, p0, Lorg/cybergarage/upnp/b/c;->b:Ljava/io/File;

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/b/c;->c:Ljava/lang/String;

    const/16 v0, 0x708

    iput v0, p0, Lorg/cybergarage/upnp/b/c;->d:I

    iput-object v1, p0, Lorg/cybergarage/upnp/b/c;->e:Lorg/cybergarage/http/HTTPServerList;

    iput-object v1, p0, Lorg/cybergarage/upnp/b/c;->f:[Ljava/net/InetAddress;

    const/16 v0, 0xfa4

    iput v0, p0, Lorg/cybergarage/upnp/b/c;->g:I

    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/b/c;->h:Lorg/cybergarage/util/ListenerList;

    iput-object v1, p0, Lorg/cybergarage/upnp/b/c;->i:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    const-string v0, "239.255.255.250"

    iput-object v0, p0, Lorg/cybergarage/upnp/b/c;->j:Ljava/lang/String;

    invoke-static {}, Lorg/cybergarage/upnp/ssdp/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cybergarage/upnp/b/c;->k:Ljava/lang/String;

    const/16 v0, 0x76c

    iput v0, p0, Lorg/cybergarage/upnp/b/c;->l:I

    iput-object v1, p0, Lorg/cybergarage/upnp/b/c;->m:[Ljava/net/InetAddress;

    iput-object v1, p0, Lorg/cybergarage/upnp/b/c;->n:Lorg/cybergarage/upnp/ssdp/f;

    iput-object v1, p0, Lorg/cybergarage/upnp/b/c;->o:Lorg/cybergarage/upnp/device/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->b:Ljava/io/File;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lorg/cybergarage/upnp/b/c;->d:I

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/c;->b:Ljava/io/File;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/c;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/device/a;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/c;->o:Lorg/cybergarage/upnp/device/a;

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/c;->n:Lorg/cybergarage/upnp/ssdp/f;

    return-void
.end method

.method public a([Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/c;->f:[Ljava/net/InetAddress;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lorg/cybergarage/upnp/b/c;->g:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/c;->c:Ljava/lang/String;

    return-void
.end method

.method public b([Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/c;->m:[Ljava/net/InetAddress;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lorg/cybergarage/upnp/b/c;->l:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/c;->j:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/cybergarage/upnp/b/c;->d:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/c;->k:Ljava/lang/String;

    return-void
.end method

.method public e()Lorg/cybergarage/http/HTTPServerList;
    .locals 3

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->e:Lorg/cybergarage/http/HTTPServerList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/http/HTTPServerList;

    iget-object v1, p0, Lorg/cybergarage/upnp/b/c;->f:[Ljava/net/InetAddress;

    iget v2, p0, Lorg/cybergarage/upnp/b/c;->g:I

    invoke-direct {v0, v1, v2}, Lorg/cybergarage/http/HTTPServerList;-><init>([Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lorg/cybergarage/upnp/b/c;->e:Lorg/cybergarage/http/HTTPServerList;

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->e:Lorg/cybergarage/http/HTTPServerList;

    return-object v0
.end method

.method public f()[Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->f:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lorg/cybergarage/upnp/b/c;->g:I

    return v0
.end method

.method public h()Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;
    .locals 5

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->i:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    if-nez v0, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    iget-object v1, p0, Lorg/cybergarage/upnp/b/c;->m:[Ljava/net/InetAddress;

    iget v2, p0, Lorg/cybergarage/upnp/b/c;->l:I

    iget-object v3, p0, Lorg/cybergarage/upnp/b/c;->j:Ljava/lang/String;

    iget-object v4, p0, Lorg/cybergarage/upnp/b/c;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;-><init>([Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/b/c;->i:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->i:Lorg/cybergarage/upnp/ssdp/SSDPSearchSocketList;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lorg/cybergarage/upnp/b/c;->l:I

    return v0
.end method

.method public j()[Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->m:[Ljava/net/InetAddress;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public m()Lorg/cybergarage/upnp/ssdp/f;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->n:Lorg/cybergarage/upnp/ssdp/f;

    return-object v0
.end method

.method public n()Lorg/cybergarage/upnp/device/a;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/c;->o:Lorg/cybergarage/upnp/device/a;

    return-object v0
.end method
