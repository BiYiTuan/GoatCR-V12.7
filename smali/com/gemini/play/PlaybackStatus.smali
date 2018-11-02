.class Lcom/gemini/play/PlaybackStatus;
.super Ljava/lang/Object;
.source "BACKplayer.java"


# instance fields
.field id:I

.field image:Ljava/lang/String;

.field introduction:Ljava/lang/String;

.field introductions:[Ljava/lang/String;

.field introid:Ljava/lang/String;

.field name:Ljava/lang/String;

.field password:Ljava/lang/String;

.field source:Ljava/lang/String;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/gemini/play/PlaybackStatus;->id:I

    .line 27
    iput-object v2, p0, Lcom/gemini/play/PlaybackStatus;->name:Ljava/lang/String;

    .line 28
    iput-object v2, p0, Lcom/gemini/play/PlaybackStatus;->image:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/gemini/play/PlaybackStatus;->url:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/gemini/play/PlaybackStatus;->password:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/gemini/play/PlaybackStatus;->type:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/gemini/play/PlaybackStatus;->introduction:Ljava/lang/String;

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/gemini/play/PlaybackStatus;->introductions:[Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/gemini/play/PlaybackStatus;->source:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Lcom/gemini/play/PlaybackStatus;->introid:Ljava/lang/String;

    return-void
.end method
