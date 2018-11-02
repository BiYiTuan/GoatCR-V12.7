.class Lcom/gemini/play/VodTypeStatus;
.super Ljava/lang/Object;
.source "VODplayer.java"


# instance fields
.field areas:[Ljava/lang/String;

.field types:[Ljava/lang/String;

.field years:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/gemini/play/VodTypeStatus;->types:[Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/gemini/play/VodTypeStatus;->years:[Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/gemini/play/VodTypeStatus;->areas:[Ljava/lang/String;

    return-void
.end method
