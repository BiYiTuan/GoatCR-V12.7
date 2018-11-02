.class Lcom/gemini/play/VodListUrlListStatus;
.super Ljava/lang/Object;
.source "VODplayer.java"


# instance fields
.field b:Landroid/graphics/Bitmap;

.field image:Landroid/widget/ImageView;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/gemini/play/VodListUrlListStatus;->url:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/gemini/play/VodListUrlListStatus;->b:Landroid/graphics/Bitmap;

    .line 74
    iput-object v0, p0, Lcom/gemini/play/VodListUrlListStatus;->image:Landroid/widget/ImageView;

    return-void
.end method
