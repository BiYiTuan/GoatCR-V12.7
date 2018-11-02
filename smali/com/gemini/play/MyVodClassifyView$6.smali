.class Lcom/gemini/play/MyVodClassifyView$6;
.super Ljava/lang/Object;
.source "MyVodClassifyView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodClassifyView;->hideClassifyList()V
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
    .line 212
    iput-object p1, p0, Lcom/gemini/play/MyVodClassifyView$6;->this$0:Lcom/gemini/play/MyVodClassifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView$6;->this$0:Lcom/gemini/play/MyVodClassifyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodClassifyView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/gemini/play/MyVodClassifyView$6;->this$0:Lcom/gemini/play/MyVodClassifyView;

    invoke-static {v0}, Lcom/gemini/play/MyVodClassifyView;->access$100(Lcom/gemini/play/MyVodClassifyView;)Lcom/gemini/play/ListViewInterface;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/gemini/play/ListViewInterface;->callback(ILjava/lang/String;)V

    .line 217
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 223
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 229
    return-void
.end method
