.class Lcom/gemini/play/Type2Status;
.super Ljava/lang/Object;
.source "LIVEplayer.java"


# instance fields
.field id:Ljava/lang/String;

.field needps:Ljava/lang/String;

.field ps:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/gemini/play/Type2Status;->id:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/gemini/play/Type2Status;->needps:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/gemini/play/Type2Status;->ps:Ljava/lang/String;

    return-void
.end method
