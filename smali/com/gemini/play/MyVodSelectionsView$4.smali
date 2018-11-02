.class Lcom/gemini/play/MyVodSelectionsView$4;
.super Ljava/lang/Object;
.source "MyVodSelectionsView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodSelectionsView;->hideSelectionsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodSelectionsView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodSelectionsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodSelectionsView;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/gemini/play/MyVodSelectionsView$4;->this$0:Lcom/gemini/play/MyVodSelectionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView$4;->this$0:Lcom/gemini/play/MyVodSelectionsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodSelectionsView;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 164
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 170
    return-void
.end method
