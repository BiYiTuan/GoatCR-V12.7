.class final enum Lcom/memo/connection/AccessPoint$PskType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/memo/connection/AccessPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/memo/connection/AccessPoint$PskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/memo/connection/AccessPoint$PskType;

.field public static final enum UNKNOWN:Lcom/memo/connection/AccessPoint$PskType;

.field public static final enum WPA:Lcom/memo/connection/AccessPoint$PskType;

.field public static final enum WPA2:Lcom/memo/connection/AccessPoint$PskType;

.field public static final enum WPA_WPA2:Lcom/memo/connection/AccessPoint$PskType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/memo/connection/AccessPoint$PskType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/memo/connection/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/memo/connection/AccessPoint$PskType;->UNKNOWN:Lcom/memo/connection/AccessPoint$PskType;

    new-instance v0, Lcom/memo/connection/AccessPoint$PskType;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v3}, Lcom/memo/connection/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/memo/connection/AccessPoint$PskType;->WPA:Lcom/memo/connection/AccessPoint$PskType;

    new-instance v0, Lcom/memo/connection/AccessPoint$PskType;

    const-string v1, "WPA2"

    invoke-direct {v0, v1, v4}, Lcom/memo/connection/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/memo/connection/AccessPoint$PskType;->WPA2:Lcom/memo/connection/AccessPoint$PskType;

    new-instance v0, Lcom/memo/connection/AccessPoint$PskType;

    const-string v1, "WPA_WPA2"

    invoke-direct {v0, v1, v5}, Lcom/memo/connection/AccessPoint$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/memo/connection/AccessPoint$PskType;->WPA_WPA2:Lcom/memo/connection/AccessPoint$PskType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/memo/connection/AccessPoint$PskType;

    sget-object v1, Lcom/memo/connection/AccessPoint$PskType;->UNKNOWN:Lcom/memo/connection/AccessPoint$PskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/memo/connection/AccessPoint$PskType;->WPA:Lcom/memo/connection/AccessPoint$PskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/memo/connection/AccessPoint$PskType;->WPA2:Lcom/memo/connection/AccessPoint$PskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/memo/connection/AccessPoint$PskType;->WPA_WPA2:Lcom/memo/connection/AccessPoint$PskType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/memo/connection/AccessPoint$PskType;->$VALUES:[Lcom/memo/connection/AccessPoint$PskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/memo/connection/AccessPoint$PskType;
    .locals 1

    const-class v0, Lcom/memo/connection/AccessPoint$PskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/memo/connection/AccessPoint$PskType;

    return-object v0
.end method

.method public static values()[Lcom/memo/connection/AccessPoint$PskType;
    .locals 1

    sget-object v0, Lcom/memo/connection/AccessPoint$PskType;->$VALUES:[Lcom/memo/connection/AccessPoint$PskType;

    invoke-virtual {v0}, [Lcom/memo/connection/AccessPoint$PskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/memo/connection/AccessPoint$PskType;

    return-object v0
.end method
