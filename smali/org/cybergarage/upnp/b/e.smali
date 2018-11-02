.class public Lorg/cybergarage/upnp/b/e;
.super Lorg/cybergarage/upnp/b/d;


# instance fields
.field private a:Lorg/cybergarage/util/ListenerList;

.field private b:Lorg/cybergarage/xml/b;

.field private c:Lorg/cybergarage/upnp/event/SubscriberList;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/cybergarage/upnp/b/d;-><init>()V

    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/b/e;->a:Lorg/cybergarage/util/ListenerList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/b/e;->b:Lorg/cybergarage/xml/b;

    new-instance v0, Lorg/cybergarage/upnp/event/SubscriberList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/SubscriberList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/b/e;->c:Lorg/cybergarage/upnp/event/SubscriberList;

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/b/e;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/b/e;->e:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/cybergarage/upnp/b/e;->f:J

    return-void
.end method


# virtual methods
.method public a()Lorg/cybergarage/xml/b;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/e;->b:Lorg/cybergarage/xml/b;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lorg/cybergarage/upnp/b/e;->f:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/e;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/cybergarage/xml/b;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/e;->b:Lorg/cybergarage/xml/b;

    return-void
.end method

.method public b()Lorg/cybergarage/upnp/event/SubscriberList;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/e;->c:Lorg/cybergarage/upnp/event/SubscriberList;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/e;->e:Ljava/lang/String;

    return-object v0
.end method
