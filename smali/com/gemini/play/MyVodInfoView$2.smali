.class Lcom/gemini/play/MyVodInfoView$2;
.super Ljava/lang/Object;
.source "MyVodInfoView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodInfoView;->showInfoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodInfoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodInfoView;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/gemini/play/MyVodInfoView$2;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 148
    iget-object v4, p0, Lcom/gemini/play/MyVodInfoView$2;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v4}, Lcom/gemini/play/MyVodInfoView;->getLeft()I

    move-result v1

    .line 149
    .local v1, "left":I
    iget-object v4, p0, Lcom/gemini/play/MyVodInfoView$2;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v4}, Lcom/gemini/play/MyVodInfoView;->getTop()I

    move-result v2

    .line 150
    .local v2, "top":I
    iget-object v4, p0, Lcom/gemini/play/MyVodInfoView$2;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v4}, Lcom/gemini/play/MyVodInfoView;->getWidth()I

    move-result v3

    .line 151
    .local v3, "width":I
    iget-object v4, p0, Lcom/gemini/play/MyVodInfoView$2;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v4}, Lcom/gemini/play/MyVodInfoView;->getHeight()I

    move-result v0

    .line 152
    .local v0, "height":I
    iget-object v4, p0, Lcom/gemini/play/MyVodInfoView$2;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-virtual {v4}, Lcom/gemini/play/MyVodInfoView;->clearAnimation()V

    .line 153
    iget-object v4, p0, Lcom/gemini/play/MyVodInfoView$2;->this$0:Lcom/gemini/play/MyVodInfoView;

    add-int v5, v1, v3

    add-int v6, v2, v0

    invoke-virtual {v4, v1, v2, v5, v6}, Lcom/gemini/play/MyVodInfoView;->layout(IIII)V

    .line 154
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 160
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 166
    return-void
.end method
