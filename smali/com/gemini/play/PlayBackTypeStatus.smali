.class Lcom/gemini/play/PlayBackTypeStatus;
.super Ljava/lang/Object;
.source "BACKplayer.java"


# instance fields
.field id:Ljava/lang/String;

.field key:Ljava/lang/String;

.field needps:Ljava/lang/String;

.field ps:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/gemini/play/PlayBackTypeStatus;->id:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/gemini/play/PlayBackTypeStatus;->needps:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/gemini/play/PlayBackTypeStatus;->ps:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/gemini/play/PlayBackTypeStatus;->type:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/gemini/play/PlayBackTypeStatus;->key:Ljava/lang/String;

    return-void
.end method
