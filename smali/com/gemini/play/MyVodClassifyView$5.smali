.class Lcom/gemini/play/MyVodClassifyView$5;
.super Ljava/lang/Object;
.source "MyVodClassifyView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodClassifyView;->showClassifyList(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodClassifyView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodClassifyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodClassifyView;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/gemini/play/MyVodClassifyView$5;->this$0:Lcom/gemini/play/MyVodClassifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView$5;->this$0:Lcom/gemini/play/MyVodClassifyView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodClassifyView;->clearAnimation()V

    .line 168
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView$5;->this$0:Lcom/gemini/play/MyVodClassifyView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodClassifyView;->listFocus()V

    .line 169
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 175
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 181
    return-void
.end method
