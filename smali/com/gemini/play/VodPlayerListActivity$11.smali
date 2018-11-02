.class Lcom/gemini/play/VodPlayerListActivity$11;
.super Ljava/lang/Object;
.source "VodPlayerListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerListActivity;->openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerListActivity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerListActivity;

    .prologue
    .line 702
    iput-object p1, p0, Lcom/gemini/play/VodPlayerListActivity$11;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerListActivity$11;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/VodPlayerListActivity$11;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 704
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity$11;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    const-class v2, Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$11;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v1, "type"

    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$11;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v1, "collect"

    iget-object v2, p0, Lcom/gemini/play/VodPlayerListActivity$11;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerListActivity;->access$400(Lcom/gemini/play/VodPlayerListActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    iget-object v1, p0, Lcom/gemini/play/VodPlayerListActivity$11;->this$0:Lcom/gemini/play/VodPlayerListActivity;

    invoke-virtual {v1, v0}, Lcom/gemini/play/VodPlayerListActivity;->startActivity(Landroid/content/Intent;)V

    .line 710
    return-void
.end method
