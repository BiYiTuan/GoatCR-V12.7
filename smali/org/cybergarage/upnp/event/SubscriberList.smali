.class public Lorg/cybergarage/upnp/event/SubscriberList;
.super Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubscriber(I)Lorg/cybergarage/upnp/event/d;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/event/SubscriberList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    check-cast v0, Lorg/cybergarage/upnp/event/d;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
