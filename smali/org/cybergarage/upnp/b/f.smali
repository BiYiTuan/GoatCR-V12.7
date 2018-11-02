.class public Lorg/cybergarage/upnp/b/f;
.super Lorg/cybergarage/upnp/b/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/cybergarage/upnp/a/f;

.field private c:Lorg/cybergarage/upnp/a/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/cybergarage/upnp/b/d;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/cybergarage/upnp/b/f;->a:Ljava/lang/String;

    iput-object v1, p0, Lorg/cybergarage/upnp/b/f;->b:Lorg/cybergarage/upnp/a/f;

    iput-object v1, p0, Lorg/cybergarage/upnp/b/f;->c:Lorg/cybergarage/upnp/a/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/cybergarage/upnp/a/f;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/b/f;->b:Lorg/cybergarage/upnp/a/f;

    return-void
.end method

.method public b()Lorg/cybergarage/upnp/a/f;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/b/f;->b:Lorg/cybergarage/upnp/a/f;

    return-object v0
.end method
