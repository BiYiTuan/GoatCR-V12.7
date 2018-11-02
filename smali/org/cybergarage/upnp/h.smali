.class public Lorg/cybergarage/upnp/h;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/h;->b(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Lorg/cybergarage/http/k;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "Invalid Action"

    goto :goto_0

    :sswitch_1
    const-string v0, "Invalid Args"

    goto :goto_0

    :sswitch_2
    const-string v0, "Out of Sync"

    goto :goto_0

    :sswitch_3
    const-string v0, "Invalid Var"

    goto :goto_0

    :sswitch_4
    const-string v0, "Precondition Failed"

    goto :goto_0

    :sswitch_5
    const-string v0, "Action Failed"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x192 -> :sswitch_1
        0x193 -> :sswitch_2
        0x194 -> :sswitch_3
        0x19c -> :sswitch_4
        0x1f5 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/cybergarage/upnp/h;->a:I

    return v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/cybergarage/upnp/h;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cybergarage/upnp/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lorg/cybergarage/upnp/h;->a:I

    return-void
.end method
