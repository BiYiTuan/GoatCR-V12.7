.class Lcom/gemini/play/VodPlayerList2Activity$8;
.super Ljava/lang/Object;
.source "VodPlayerList2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/VodPlayerList2Activity;->openInfoActivity(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/VodPlayerList2Activity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerList2Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerList2Activity;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/gemini/play/VodPlayerList2Activity$8;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    iput-object p2, p0, Lcom/gemini/play/VodPlayerList2Activity$8;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/gemini/play/VodPlayerList2Activity$8;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 584
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity$8;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    const-class v2, Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "id"

    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity$8;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v1, "type"

    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity$8;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string v1, "collect"

    iget-object v2, p0, Lcom/gemini/play/VodPlayerList2Activity$8;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-static {v2}, Lcom/gemini/play/VodPlayerList2Activity;->access$400(Lcom/gemini/play/VodPlayerList2Activity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    iget-object v1, p0, Lcom/gemini/play/VodPlayerList2Activity$8;->this$0:Lcom/gemini/play/VodPlayerList2Activity;

    invoke-virtual {v1, v0}, Lcom/gemini/play/VodPlayerList2Activity;->startActivity(Landroid/content/Intent;)V

    .line 590
    return-void
.end method
