.class public Lorg/cybergarage/upnp/b/a;
.super Lorg/cybergarage/upnp/b/d;


# instance fields
.field private a:Lorg/cybergarage/upnp/a/a;

.field private b:Lorg/cybergarage/upnp/a/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/cybergarage/upnp/b/d;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/b/a;->a:Lorg/cybergarage/upnp/a/a;

    iput-object v0, p0, Lorg/cybergarage/upnp/b/a;->b:Lorg/cybergarage/upnp/a/e;

    return-void
.end method


# virtual methods
.method public a()Lorg/cybergarage/upnp/a/a;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/a;->a:Lorg/cybergarage/upnp/a/a;

    return-object v0
.end method

.method public a(Lorg/cybergarage/upnp/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/a;->a:Lorg/cybergarage/upnp/a/a;

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/a/e;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/a;->b:Lorg/cybergarage/upnp/a/e;

    return-void
.end method
