.class public Lorg/cybergarage/upnp/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cybergarage/http/f;


# instance fields
.field a:Lorg/cybergarage/util/ListenerList;

.field private b:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

.field private c:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

.field private d:Lorg/cybergarage/util/Mutex;

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Lorg/cybergarage/xml/NodeList;

.field private final i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private j:Lorg/cybergarage/upnp/device/b;

.field private k:J

.field private l:Lorg/cybergarage/util/ListenerList;

.field private m:Lorg/cybergarage/util/ListenerList;

.field private n:I

.field private o:Lorg/cybergarage/http/HTTPServerList;

.field private p:Lorg/cybergarage/util/ListenerList;

.field private q:Ljava/lang/String;

.field private r:Lorg/cybergarage/upnp/a/i;

.field private s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/cybergarage/upnp/g;->f()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1f48

    const/16 v1, 0x1f7a

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/c;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cybergarage/upnp/c;-><init>(II[Ljava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(II[Ljava/net/InetAddress;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->d:Lorg/cybergarage/util/Mutex;

    iput v3, p0, Lorg/cybergarage/upnp/c;->e:I

    iput v3, p0, Lorg/cybergarage/upnp/c;->f:I

    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->h:Lorg/cybergarage/xml/NodeList;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->l:Lorg/cybergarage/util/ListenerList;

    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->m:Lorg/cybergarage/util/ListenerList;

    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->a:Lorg/cybergarage/util/ListenerList;

    const/4 v0, 0x3

    iput v0, p0, Lorg/cybergarage/upnp/c;->n:I

    new-instance v0, Lorg/cybergarage/http/HTTPServerList;

    invoke-direct {v0}, Lorg/cybergarage/http/HTTPServerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->o:Lorg/cybergarage/http/HTTPServerList;

    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->p:Lorg/cybergarage/util/ListenerList;

    const-string v0, "/evetSub"

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->q:Ljava/lang/String;

    iput-object v2, p0, Lorg/cybergarage/upnp/c;->s:Ljava/lang/Object;

    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    invoke-direct {v0, p3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;-><init>([Ljava/net/InetAddress;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->b:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    invoke-direct {v0, p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;-><init>([Ljava/net/InetAddress;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/c;->c:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/c;->a(I)V

    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/c;->b(I)V

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/device/b;)V

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/c;->a(J)V

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/a/i;)V

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/c;->a(Z)V

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/a/i;)V

    return-void
.end method

.method private a(Lorg/cybergarage/xml/b;)V
    .locals 2

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/upnp/c;->h:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private b(Lorg/cybergarage/xml/b;)Lorg/cybergarage/upnp/Device;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "device"

    invoke-virtual {p1, v1}, Lorg/cybergarage/xml/b;->g(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/cybergarage/upnp/Device;

    invoke-direct {v0, p1, v1}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/b;Lorg/cybergarage/xml/b;)V

    goto :goto_0
.end method

.method private c(Lorg/cybergarage/xml/b;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/c;->b(Lorg/cybergarage/xml/b;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/c;->c(Lorg/cybergarage/upnp/Device;)V

    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/upnp/c;->h:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/xml/NodeList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->b()I

    move-result v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/cybergarage/a/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized e(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->q()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "####addDevice return not root device ######"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "tubicast"

    const-string v1, "tubicast"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description_dmr.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "####addDevice return not 38400 ######"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/c;->a(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "#### addDevice dev != null,AND return now######"

    invoke-static {v1}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/f;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->i()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### description location is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ######"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/cybergarage/upnp/g;->d()Lorg/cybergarage/xml/c;

    move-result-object v4

    invoke-static {v0}, Lorg/cybergarage/util/HttpUtil;->getContent(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const-string v1, "<"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :try_start_4
    const-string v0, "ISO-8859-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/StringUtil;->eds([B)[B

    move-result-object v5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_1
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### description "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "HttpUtil.getContent is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ######"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "HttpError"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### Error "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "get description empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v4, v1}, Lorg/cybergarage/xml/c;->parse(Ljava/lang/String;)Lorg/cybergarage/xml/b;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/c;->b(Lorg/cybergarage/xml/b;)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-boolean v0, v2, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/f;)V

    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/xml/b;)V

    const-string v0, "#### control point addDevice over######"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/c;->b(Lorg/cybergarage/upnp/Device;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    const-string v1, "#### Error MalformedURLException"

    invoke-static {v1}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move v0, v1

    move-object v1, v2

    goto/16 :goto_1

    :cond_5
    const-string v2, "#### control point parse description over######"

    invoke-static {v2}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_8
    const-string v1, "#### Error ParserException pe"

    invoke-static {v1}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :cond_6
    move-object v1, v2

    goto/16 :goto_1
.end method

.method private f(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->t()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/upnp/device/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->b:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    return-object v0
.end method

.method private n()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->c:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    return-object v0
.end method

.method private o()Lorg/cybergarage/http/HTTPServerList;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->o:Lorg/cybergarage/http/HTTPServerList;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/cybergarage/upnp/c;->e:I

    return v0
.end method

.method public a(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 5

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/upnp/c;->h:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->h:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/c;->b(Lorg/cybergarage/xml/b;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v1, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_1
    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lorg/cybergarage/upnp/c;->e:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lorg/cybergarage/upnp/c;->k:J

    return-void
.end method

.method public a(JZ)V
    .locals 5

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->d()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2, p3}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/Device;JZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 7

    new-instance v1, Lorg/cybergarage/upnp/ssdp/i;

    invoke-direct {v1, p1, p2}, Lorg/cybergarage/upnp/ssdp/i;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0}, Lorg/cybergarage/upnp/c;->n()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->getSSDPSearchResponseSocket(I)Lorg/cybergarage/upnp/ssdp/k;

    move-result-object v3

    const-string v4, "gggl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "search "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->post(Lorg/cybergarage/upnp/ssdp/i;)Z

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/cybergarage/upnp/ssdp/i;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/upnp/ssdp/i;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0}, Lorg/cybergarage/upnp/c;->n()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->post(Lorg/cybergarage/upnp/ssdp/i;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->p:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->p:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, v6}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/event/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/cybergarage/upnp/event/a;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Lorg/cybergarage/upnp/Device;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/c;->c(Lorg/cybergarage/xml/b;)V

    goto :goto_0
.end method

.method public a(Lorg/cybergarage/upnp/Device;JZ)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v8

    invoke-virtual {v8}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v9

    move v7, v0

    :goto_0
    if-ge v7, v9, :cond_2

    invoke-virtual {v8, v7}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/e;->r()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/cybergarage/upnp/e;->o()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/e;Ljava/lang/String;JZ)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v2, p2, p3, p4}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/e;JZ)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    invoke-virtual {p0, v3, p2, p3, p4}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/Device;JZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public a(Lorg/cybergarage/upnp/Device;Z)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/ServiceList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/e;

    move-result-object v4

    invoke-virtual {v4}, Lorg/cybergarage/upnp/e;->q()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v4, p2}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/e;Z)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/Device;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Lorg/cybergarage/upnp/a/i;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/c;->r:Lorg/cybergarage/upnp/a/i;

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->a:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/device/b;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/c;->j:Lorg/cybergarage/upnp/device/b;

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/device/j;)V
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->m:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 4

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->l:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->l:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/f;

    :try_start_0
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/f;->a(Lorg/cybergarage/upnp/ssdp/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "NotifyListener returned an error:"

    invoke-static {v3, v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/cybergarage/upnp/c;->g:Z

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/e;JZ)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->o()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/e;Ljava/lang/String;JZ)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->c()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/cybergarage/upnp/event/f;

    invoke-direct {v3}, Lorg/cybergarage/upnp/event/f;-><init>()V

    invoke-direct {p0, v2}, Lorg/cybergarage/upnp/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, p1, v2, p2, p3}, Lorg/cybergarage/upnp/event/f;->a(Lorg/cybergarage/upnp/e;Ljava/lang/String;J)V

    iget-boolean v1, v1, Lorg/cybergarage/upnp/Device;->encryption:Z

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/event/f;->a(Z)Lorg/cybergarage/upnp/event/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/g;->B()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/g;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/cybergarage/upnp/e;->k(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/g;->G()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/cybergarage/upnp/e;->a(J)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->p()V

    goto :goto_0
.end method

.method public a(Lorg/cybergarage/upnp/e;Ljava/lang/String;JZ)Z
    .locals 3

    new-instance v0, Lorg/cybergarage/upnp/event/f;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/f;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/cybergarage/upnp/event/f;->b(Lorg/cybergarage/upnp/e;Ljava/lang/String;J)V

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/f;->U()V

    :cond_0
    invoke-virtual {v0, p5}, Lorg/cybergarage/upnp/event/f;->a(Z)Lorg/cybergarage/upnp/event/g;

    move-result-object v0

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/g;->E()V

    :cond_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/g;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/g;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/cybergarage/upnp/e;->k(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/g;->G()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/cybergarage/upnp/e;->a(J)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->p()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/cybergarage/upnp/e;Z)Z
    .locals 1

    new-instance v0, Lorg/cybergarage/upnp/event/f;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/f;-><init>()V

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/event/f;->a(Lorg/cybergarage/upnp/e;)V

    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/event/f;->a(Z)Lorg/cybergarage/upnp/event/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/g;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/e;->p()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/cybergarage/upnp/c;->f:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lorg/cybergarage/upnp/c;->f:I

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/c;->a(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/Device;)V

    return-void
.end method

.method public b(Lorg/cybergarage/upnp/Device;)V
    .locals 3

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->a:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->a:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/DeviceChangeListener;

    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceAdded(Lorg/cybergarage/upnp/Device;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 4

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->m:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->m:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/j;

    :try_start_0
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/j;->deviceSearchResponseReceived(Lorg/cybergarage/upnp/ssdp/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SearchResponseListener returned an error:"

    invoke-static {v3, v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 4

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->d()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/Device;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;I)Z
    .locals 7

    const/16 v6, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "gggl"

    const-string v1, "ControlPoint start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->l()Z

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->b()I

    move-result v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/c;->o()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v0}, Lorg/cybergarage/http/HTTPServerList;->open(I)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v6, v1, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/c;->b(I)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->b()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4, p0}, Lorg/cybergarage/http/HTTPServerList;->addRequestListener(Lorg/cybergarage/http/f;)V

    invoke-virtual {v4}, Lorg/cybergarage/http/HTTPServerList;->start()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/c;->m()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->open()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->setControlPoint(Lorg/cybergarage/upnp/c;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->start()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->a()I

    move-result v0

    invoke-direct {p0}, Lorg/cybergarage/upnp/c;->n()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-lt v6, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/c;->a(I)V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->a()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {v4, p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->setControlPoint(Lorg/cybergarage/upnp/c;)V

    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->start()V

    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/upnp/c;->a(Ljava/lang/String;I)V

    new-instance v0, Lorg/cybergarage/upnp/device/b;

    invoke-direct {v0, p0}, Lorg/cybergarage/upnp/device/b;-><init>(Lorg/cybergarage/upnp/c;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/device/b;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/b;->start()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->c()Z

    move-result v0

    if-ne v0, v3, :cond_4

    new-instance v0, Lorg/cybergarage/upnp/a/i;

    invoke-direct {v0, p0}, Lorg/cybergarage/upnp/a/i;-><init>(Lorg/cybergarage/upnp/c;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/a/i;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/a/i;->start()V

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const-string v0, "upnp:rootdevice"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public c(Lorg/cybergarage/upnp/Device;)V
    .locals 3

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->a:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0}, Lorg/cybergarage/util/ListenerList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->a:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, v1}, Lorg/cybergarage/util/ListenerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/DeviceChangeListener;

    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceRemoved(Lorg/cybergarage/upnp/Device;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/c;->e(Lorg/cybergarage/upnp/ssdp/f;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/ssdp/f;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "####notifyReceived packet.isByeBye,and remove device ######"

    invoke-static {v0}, Lcom/memo/TestXlog;->i(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/c;->f(Lorg/cybergarage/upnp/ssdp/f;)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lorg/cybergarage/upnp/c;->a(JZ)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/cybergarage/upnp/c;->g:Z

    return v0
.end method

.method public d()Lorg/cybergarage/upnp/DeviceList;
    .locals 4

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    new-instance v1, Lorg/cybergarage/upnp/DeviceList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->h:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Lorg/cybergarage/xml/NodeList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lorg/cybergarage/upnp/c;->h:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v3, v0}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/b;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/cybergarage/upnp/c;->b(Lorg/cybergarage/xml/b;)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/DeviceList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/cybergarage/upnp/c;->i:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1
.end method

.method public d(Lorg/cybergarage/upnp/ssdp/f;)V
    .locals 1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/f;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/c;->e(Lorg/cybergarage/upnp/ssdp/f;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/c;->b(Lorg/cybergarage/upnp/ssdp/f;)V

    return-void
.end method

.method public e()V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->d()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/DeviceList;->size()I

    move-result v3

    new-array v4, v3, [Lorg/cybergarage/upnp/Device;

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v1, v4, v0

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->isExpired()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expired device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v4, v0

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    aget-object v1, v4, v0

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/Device;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lorg/cybergarage/upnp/c;->k:J

    return-wide v0
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->l()Z

    return-void
.end method

.method public g()Lorg/cybergarage/upnp/device/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->j:Lorg/cybergarage/upnp/device/b;

    return-object v0
.end method

.method public h()V
    .locals 2

    const-string v0, "upnp:rootdevice"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public httpRequestRecieved(Lorg/cybergarage/http/e;)V
    .locals 9

    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/cybergarage/http/e;->U()V

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/e;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/cybergarage/upnp/event/b;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/event/b;-><init>(Lorg/cybergarage/http/e;)V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/b;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/b;->Z()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/b;->aa()Lorg/cybergarage/upnp/event/PropertyList;

    move-result-object v7

    invoke-virtual {v7}, Lorg/cybergarage/upnp/event/PropertyList;->size()I

    move-result v8

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_1

    invoke-virtual {v7, v6}, Lorg/cybergarage/upnp/event/PropertyList;->getProperty(I)Lorg/cybergarage/upnp/event/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/c;->b()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/cybergarage/upnp/c;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/http/e;->S()Z

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/http/e;->T()Z

    goto :goto_1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lorg/cybergarage/upnp/a/i;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/c;->r:Lorg/cybergarage/upnp/a/i;

    return-object v0
.end method

.method public k()Z
    .locals 2

    const-string v0, "upnp:rootdevice"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/c;->b(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/c;->b(Z)V

    invoke-direct {p0}, Lorg/cybergarage/upnp/c;->m()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->stop()V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->close()V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->clear()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/c;->n()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->clear()V

    invoke-direct {p0}, Lorg/cybergarage/upnp/c;->o()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPServerList;->stop()V

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPServerList;->close()V

    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPServerList;->clear()V

    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->g()Lorg/cybergarage/upnp/device/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/device/b;->stop()V

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/device/b;)V

    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/c;->j()Lorg/cybergarage/upnp/a/i;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/cybergarage/upnp/a/i;->stop()V

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/c;->a(Lorg/cybergarage/upnp/a/i;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
