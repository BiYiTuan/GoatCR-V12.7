.class Lcom/gemini/play/VodMainStatus;
.super Ljava/lang/Object;
.source "VODplayer.java"


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field id:Ljava/lang/String;

.field image:Ljava/lang/String;

.field name:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/gemini/play/VodMainStatus;->name:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/gemini/play/VodMainStatus;->image:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/gemini/play/VodMainStatus;->type:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/gemini/play/VodMainStatus;->id:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/gemini/play/VodMainStatus;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
