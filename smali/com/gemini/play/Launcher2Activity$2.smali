.class Lcom/gemini/play/Launcher2Activity$2;
.super Landroid/os/Handler;
.source "Launcher2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/Launcher2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/Launcher2Activity;


# direct methods
.method constructor <init>(Lcom/gemini/play/Launcher2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/Launcher2Activity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/gemini/play/Launcher2Activity$2;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 129
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "imagePath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 130
    .local v12, "imagePath":Ljava/lang/String;
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 131
    .local v13, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x4

    iput v0, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 132
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 133
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity$2;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-static {v0}, Lcom/gemini/play/Launcher2Activity;->access$000(Lcom/gemini/play/Launcher2Activity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 139
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "imagePath":Ljava/lang/String;
    .end local v13    # "opts":Landroid/graphics/BitmapFactory$Options;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "times"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 142
    .local v10, "times":I
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity$2;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-static {v0}, Lcom/gemini/play/Launcher2Activity;->access$100(Lcom/gemini/play/Launcher2Activity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/gemini/play/ScrollTextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity$2;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-static {v0}, Lcom/gemini/play/Launcher2Activity;->access$100(Lcom/gemini/play/Launcher2Activity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/gemini/play/ScrollTextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/gemini/play/Launcher2Activity$2;->this$0:Lcom/gemini/play/Launcher2Activity;

    invoke-static {v0}, Lcom/gemini/play/Launcher2Activity;->access$100(Lcom/gemini/play/Launcher2Activity;)Lcom/gemini/play/ScrollTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/Launcher2Activity$2;->this$0:Lcom/gemini/play/Launcher2Activity;

    const/high16 v7, 0x40200000    # 2.5f

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v8, v4

    const-string v9, "FFFFFF"

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v10}, Lcom/gemini/play/ScrollTextView;->start_every(Landroid/app/Activity;Ljava/lang/String;IIIIFILjava/lang/String;I)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
