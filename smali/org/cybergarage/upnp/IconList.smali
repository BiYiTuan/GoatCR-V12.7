.class public Lorg/cybergarage/upnp/IconList;
.super Ljava/util/Vector;


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "iconList"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon(I)Lorg/cybergarage/upnp/d;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/IconList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/d;

    return-object v0
.end method
