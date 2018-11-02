.class Lcom/gemini/play/VodPlayerMainActivity$19;
.super Ljava/lang/Object;
.source "VodPlayerMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerMainActivity;->openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerMainActivity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerMainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerMainActivity;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/gemini/play/VodPlayerMainActivity$19;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerMainActivity$19;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/VodPlayerMainActivity$19;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 712
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$19;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    const-class v2, Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity$19;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v1, "type"

    iget-object v2, p0, Lcom/gemini/play/VodPlayerMainActivity$19;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v1, "collect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    iget-object v1, p0, Lcom/gemini/play/VodPlayerMainActivity$19;->this$0:Lcom/gemini/play/VodPlayerMainActivity;

    invoke-virtual {v1, v0}, Lcom/gemini/play/VodPlayerMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 718
    return-void
.end method
