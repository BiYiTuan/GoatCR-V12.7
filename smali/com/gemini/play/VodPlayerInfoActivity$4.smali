.class Lcom/gemini/play/VodPlayerInfoActivity$4;
.super Ljava/lang/Object;
.source "VodPlayerInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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


# direct methods
.method constructor <init>(Lcom/gemini/play/VodPlayerInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/VodPlayerInfoActivity;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/gemini/play/VodPlayerInfoActivity$4;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 296
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity$4;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerInfoActivity;->access$400(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/VodPlayerInfoActivity$4;->this$0:Lcom/gemini/play/VodPlayerInfoActivity;

    invoke-static {v0}, Lcom/gemini/play/VodPlayerInfoActivity;->access$400(Lcom/gemini/play/VodPlayerInfoActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
