.class Lcom/gemini/play/MyVodSelectionsView$3;
.super Ljava/lang/Object;
.source "MyVodSelectionsView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodSelectionsView;->showSelectionsView(Lcom/gemini/play/VodListStatus;ILjava/lang/String;)V
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
    .line 120
    iput-object p1, p0, Lcom/gemini/play/MyVodSelectionsView$3;->this$0:Lcom/gemini/play/MyVodSelectionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView$3;->this$0:Lcom/gemini/play/MyVodSelectionsView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodSelectionsView;->clearAnimation()V

    .line 123
    iget-object v0, p0, Lcom/gemini/play/MyVodSelectionsView$3;->this$0:Lcom/gemini/play/MyVodSelectionsView;

    invoke-virtual {v0}, Lcom/gemini/play/MyVodSelectionsView;->listFocus()V

    .line 124
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 130
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 136
    return-void
.end method
