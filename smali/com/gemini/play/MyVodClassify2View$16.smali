.class Lcom/gemini/play/MyVodClassify2View$16;
.super Ljava/lang/Object;
.source "MyVodClassify2View.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodClassify2View;->showClassifyList(I)V
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
    .line 415
    iput-object p1, p0, Lcom/gemini/play/MyVodClassify2View$16;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View$16;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodClassify2View;->clearAnimation()V

    .line 418
    iget-object v0, p0, Lcom/gemini/play/MyVodClassify2View$16;->this$0:Lcom/gemini/play/MyVodClassify2View;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodClassify2View;->listFocus()V

    .line 419
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 425
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 431
    return-void
.end method
