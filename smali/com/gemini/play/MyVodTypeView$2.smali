.class Lcom/gemini/play/MyVodTypeView$2;
.super Ljava/lang/Object;
.source "MyVodTypeView.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTypeView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTypeView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTypeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTypeView;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/gemini/play/MyVodTypeView$2;->this$0:Lcom/gemini/play/MyVodTypeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "textRepresentation"    # Ljava/lang/String;

    .prologue
    .line 234
    instance-of v2, p1, Landroid/widget/ImageView;

    instance-of v3, p2, Landroid/graphics/Bitmap;

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 235
    check-cast v1, Landroid/widget/ImageView;

    .local v1, "imageView":Landroid/widget/ImageView;
    move-object v0, p2

    .line 236
    check-cast v0, Landroid/graphics/Bitmap;

    .line 237
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    const/4 v2, 0x1

    .line 240
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
