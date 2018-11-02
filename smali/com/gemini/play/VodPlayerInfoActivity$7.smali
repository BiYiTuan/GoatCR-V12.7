.class Lcom/gemini/play/VodPlayerInfoActivity$7;
.super Ljava/lang/Object;
.source "VodPlayerInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerInfoActivity;->init(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerInfoActivity;

.field final synthetic val$s:Lcom/gemini/play/VodListStatus;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerInfoActivity;Lcom/gemini/play/VodListStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity$7;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerInfoActivity$7;->val$s:Lcom/gemini/play/VodListStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 335
    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity$7;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerInfoActivity;->access$200(Lcom/gemini/play/VodPlayerInfoActivity;)Lcom/gemini/play/CollectVodDB;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$7;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v4, p0, Lcom/gemini/play/VodPlayerInfoActivity$7;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v4}, Lcom/gemini/play/VodPlayerInfoActivity;->access$300(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity$7;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerInfoActivity;->access$000(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/gemini/play/CollectVodDB;->insert(Lcom/gemini/play/VodListStatus;Landroid/graphics/Bitmap;I)J

    move-result-wide v0

    .line 336
    .local v0, "ret":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity$7;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$7;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    const v4, 0x7f0b0034

    invoke-virtual {v3, v4}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/gemini/play/VodPlayerInfoActivity$7;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$7;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    const v4, 0x7f0b0033

    invoke-virtual {v3, v4}, Lcom/gemini/play/VodPlayerInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
