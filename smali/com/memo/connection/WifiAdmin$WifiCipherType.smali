.class public final enum Lcom/memo/connection/WifiAdmin$WifiCipherType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/memo/connection/WifiAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WifiCipherType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/memo/connection/WifiAdmin$WifiCipherType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/memo/connection/WifiAdmin$WifiCipherType;

.field public static final enum WIFICIPHER_INVALID:Lcom/memo/connection/WifiAdmin$WifiCipherType;

.field public static final enum WIFICIPHER_NOPASS:Lcom/memo/connection/WifiAdmin$WifiCipherType;

.field public static final enum WIFICIPHER_WEP:Lcom/memo/connection/WifiAdmin$WifiCipherType;

.field public static final enum WIFICIPHER_WPA:Lcom/memo/connection/WifiAdmin$WifiCipherType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;

    const-string v1, "WIFICIPHER_NOPASS"

    invoke-direct {v0, v1, v2, v2}, Lcom/memo/connection/WifiAdmin$WifiCipherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    new-instance v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;

    const-string v1, "WIFICIPHER_WEP"

    invoke-direct {v0, v1, v3, v3}, Lcom/memo/connection/WifiAdmin$WifiCipherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_WEP:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    new-instance v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;

    const-string v1, "WIFICIPHER_WPA"

    invoke-direct {v0, v1, v4, v4}, Lcom/memo/connection/WifiAdmin$WifiCipherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_WPA:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    new-instance v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;

    const-string v1, "WIFICIPHER_INVALID"

    invoke-direct {v0, v1, v5, v5}, Lcom/memo/connection/WifiAdmin$WifiCipherType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_INVALID:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/memo/connection/WifiAdmin$WifiCipherType;

    sget-object v1, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_WEP:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_WPA:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_INVALID:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->$VALUES:[Lcom/memo/connection/WifiAdmin$WifiCipherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->value:I

    iput p3, p0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/memo/connection/WifiAdmin$WifiCipherType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_NOPASS:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_WEP:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_WPA:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->WIFICIPHER_INVALID:Lcom/memo/connection/WifiAdmin$WifiCipherType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/memo/connection/WifiAdmin$WifiCipherType;
    .locals 1

    const-class v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;

    return-object v0
.end method

.method public static values()[Lcom/memo/connection/WifiAdmin$WifiCipherType;
    .locals 1

    sget-object v0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->$VALUES:[Lcom/memo/connection/WifiAdmin$WifiCipherType;

    invoke-virtual {v0}, [Lcom/memo/connection/WifiAdmin$WifiCipherType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/memo/connection/WifiAdmin$WifiCipherType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/memo/connection/WifiAdmin$WifiCipherType;->value:I

    return v0
.end method
