.class Lcom/gemini/play/TypePasswords;
.super Ljava/lang/Object;
.source "LIVEplayer.java"


# instance fields
.field ps:Ljava/lang/String;

.field time:J

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gemini/play/TypePasswords;->time:J

    .line 64
    iput-object v2, p0, Lcom/gemini/play/TypePasswords;->url:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/gemini/play/TypePasswords;->ps:Ljava/lang/String;

    return-void
.end method
