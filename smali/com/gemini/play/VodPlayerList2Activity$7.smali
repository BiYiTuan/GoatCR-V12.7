.class Lcom/gemini/play/VodPlayerList2Activity$7;
.super Ljava/lang/Object;
.source "VodPlayerList2Activity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerList2Activity;->set_list()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerList2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerList2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$7;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "textRepresentation"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 533
    instance-of v3, p1, Landroid/widget/ImageView;

    instance-of v4, p2, Landroid/graphics/Bitmap;

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move-object v1, p1

    .line 534
    check-cast v1, Landroid/widget/ImageView;

    .local v1, "imageView":Landroid/widget/ImageView;
    move-object v0, p2

    .line 535
    check-cast v0, Landroid/graphics/Bitmap;

    .line 536
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 541
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return v2

    .line 538
    :cond_1
    instance-of v3, p1, Landroid/widget/ImageView;

    instance-of v4, p2, Ljava/lang/String;

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 541
    const/4 v2, 0x0

    goto :goto_0
.end method
