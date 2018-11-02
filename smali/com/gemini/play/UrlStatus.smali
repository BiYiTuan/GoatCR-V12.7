.class Lcom/gemini/play/UrlStatus;
.super Ljava/lang/Object;
.source "LIVEplayer.java"


# instance fields
.field id:I

.field image:Ljava/lang/String;

.field imagebit:Landroid/graphics/Bitmap;

.field introduction:Ljava/lang/String;

.field introductions:[Ljava/lang/String;

.field introid:Ljava/lang/String;

.field name:Ljava/lang/String;

.field password:Ljava/lang/String;

.field source:Ljava/lang/String;

.field type:Ljava/lang/String;

.field url:Ljava/lang/String;

.field watermark:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v1, p0, Lcom/gemini/play/UrlStatus;->id:I

    .line 36
    iput-object v2, p0, Lcom/gemini/play/UrlStatus;->name:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/gemini/play/UrlStatus;->image:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/gemini/play/UrlStatus;->url:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/gemini/play/UrlStatus;->password:Ljava/lang/String;

    .line 40
    iput-object v2, p0, Lcom/gemini/play/UrlStatus;->type:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/gemini/play/UrlStatus;->introduction:Ljava/lang/String;

    .line 42
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

    iput-object v0, p0, Lcom/gemini/play/UrlStatus;->introductions:[Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcom/gemini/play/UrlStatus;->source:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/gemini/play/UrlStatus;->introid:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/gemini/play/UrlStatus;->watermark:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/gemini/play/UrlStatus;->imagebit:Landroid/graphics/Bitmap;

    return-void
.end method
