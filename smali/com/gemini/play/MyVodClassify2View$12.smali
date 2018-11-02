.class Lcom/gemini/play/MyVodClassify2View$12;
.super Ljava/lang/Object;
.source "MyVodClassify2View.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodClassify2View;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodClassify2View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodClassify2View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodClassify2View;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View$12;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 255
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View$12;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v0}, Lcom/gemini/play/MyVodClassify2View;->access$1400(Lcom/gemini/play/MyVodClassify2View;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View$12;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-static {v0}, Lcom/gemini/play/MyVodClassify2View;->access$1400(Lcom/gemini/play/MyVodClassify2View;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
