.class Lcom/gemini/play/VodListStatus;
.super Ljava/lang/Object;
.source "VODplayer.java"


# instance fields
.field area:Ljava/lang/String;

.field chage:F

.field clickrate:I

.field id:I

.field image:Ljava/lang/String;

.field imagebit:Landroid/graphics/Bitmap;

.field infotype:I

.field intro1:Ljava/lang/String;

.field intro2:Ljava/lang/String;

.field intro3:Ljava/lang/String;

.field intro4:Ljava/lang/String;

.field name:Ljava/lang/String;

.field recommend:I

.field type:Ljava/lang/String;

.field updatetime:I

.field url:Ljava/lang/String;

.field year:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->image:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    .line 47
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->area:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->year:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->type:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->intro1:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->intro2:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->intro3:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/gemini/play/VodListStatus;->intro4:Ljava/lang/String;

    .line 55
    iput v1, p0, Lcom/gemini/play/VodListStatus;->id:I

    .line 56
    iput v1, p0, Lcom/gemini/play/VodListStatus;->clickrate:I

    .line 57
    iput v1, p0, Lcom/gemini/play/VodListStatus;->recommend:I

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/VodListStatus;->chage:F

    .line 59
    iput v1, p0, Lcom/gemini/play/VodListStatus;->updatetime:I

    .line 60
    iput v1, p0, Lcom/gemini/play/VodListStatus;->infotype:I

    return-void
.end method
