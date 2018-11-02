.class Lcom/gemini/play/VodPlayerMainActivity$17;
.super Landroid/os/Handler;
.source "VodPlayerMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/VodPlayerMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerMainActivity;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 611
    iput-object p1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 614
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 649
    :cond_0
    return-void

    .line 616
    :pswitch_0
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 617
    const/4 v0, 0x0

    .local v0, "ii":I
    :goto_0
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 618
    packed-switch v0, :pswitch_data_1

    .line 617
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :pswitch_1
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$200(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VodListStatus;

    iget-object v1, v1, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 621
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$300(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VodListStatus;

    iget-object v1, v1, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 625
    :pswitch_2
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$400(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VodListStatus;

    iget-object v1, v1, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 626
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$500(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VodListStatus;

    iget-object v1, v1, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 630
    :pswitch_3
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$600(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VodListStatus;

    iget-object v1, v1, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 631
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$700(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VodListStatus;

    iget-object v1, v1, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 635
    :pswitch_4
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$800(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VodListStatus;

    iget-object v1, v1, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 636
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$900(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VodListStatus;

    iget-object v1, v1, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 640
    :pswitch_5
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$1000(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VodListStatus;

    iget-object v1, v1, Lcom/gemini/play/VodListStatus;->imagebit:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 641
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$1100(Lcom/gemini/play/VodPlayerMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$17;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-static {v1}, Lcom/gemini/play/VodPlayerMainActivity;->access$100(Lcom/gemini/play/VodPlayerMainActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gemini/play/VodListStatus;

    iget-object v1, v1, Lcom/gemini/play/VodListStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 614
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 618
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
