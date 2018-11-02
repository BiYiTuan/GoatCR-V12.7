.class Lcom/gemini/play/TypeStatus;
.super Ljava/lang/Object;
.source "LIVEplayer.java"


# instance fields
.field id:Ljava/lang/String;

.field key:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/gemini/play/TypeStatus;->id:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/gemini/play/TypeStatus;->type:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/gemini/play/TypeStatus;->key:Ljava/lang/String;

    return-void
.end method
