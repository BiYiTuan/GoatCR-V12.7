.class public Lorg/cybergarage/upnp/ServiceStateTable;
.super Ljava/util/Vector;


# static fields
.field public static final ELEM_NAME:Ljava/lang/String; = "serviceStateTable"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateVariable(I)Lorg/cybergarage/upnp/f;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ServiceStateTable;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/f;

    return-object v0
.end method
