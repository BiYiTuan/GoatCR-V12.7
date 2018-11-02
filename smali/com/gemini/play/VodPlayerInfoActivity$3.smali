.class Lcom/gemini/play/VodPlayerInfoActivity$3;
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
    .line 273
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity$3;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerInfoActivity$3;->val$s:Lcom/gemini/play/VodListStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 278
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$3;->val$s:Lcom/gemini/play/VodListStatus;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$3;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 279
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$3;->val$s:Lcom/gemini/play/VodListStatus;

    iget-object v3, v3, Lcom/gemini/play/VodListStatus;->url:Ljava/lang/String;

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "urlss":[Ljava/lang/String;
    const-string v1, "1"

    .line 281
    .local v1, "num":Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 282
    aget-object v3, v2, v5

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "item":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 284
    aget-object v3, v0, v5

    if-eqz v3, :cond_0

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 285
    aget-object v1, v0, v5

    .line 288
    .end local v0    # "item":[Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/gemini/play/VodPlayerInfoActivity$3;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    iget-object v4, p0, Lcom/gemini/play/VodPlayerInfoActivity$3;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v4}, Lcom/gemini/play/VodPlayerInfoActivity;->access$100(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/gemini/play/VodPlayerInfoActivity$3;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v5}, Lcom/gemini/play/VodPlayerInfoActivity;->access$000(Lcom/gemini/play/VodPlayerInfoActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/gemini/play/VodPlayerInfoActivity;->openVideoActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v1    # "num":Ljava/lang/String;
    .end local v2    # "urlss":[Ljava/lang/String;
    :cond_1
    return-void
.end method
