.class Lcom/gemini/play/VodPlayerInfoActivity$11;
.super Landroid/os/Handler;
.source "VodPlayerInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VodPlayerInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerInfoActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity$11;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 379
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 382
    :pswitch_0
    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity$11;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity$11;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    const v2, 0x7f0700b0

    invoke-virtual {v0, v2}, Lcom/gemini/play/VodPlayerInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/gemini/play/VodPlayerInfoActivity;->access$1002(Lcom/gemini/play/VodPlayerInfoActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 383
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity$11;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerInfoActivity;->access$1000(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity$11;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerInfoActivity;->access$300(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity$11;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerInfoActivity$11;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerInfoActivity;->access$100(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity$11;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerInfoActivity;->access$000(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$11;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v3}, Lcom/gemini/play/VodPlayerInfoActivity;->access$500(Lcom/gemini/play/VodPlayerInfoActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/gemini/play/VodPlayerInfoActivity;->access$1100(Lcom/gemini/play/VodPlayerInfoActivity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
