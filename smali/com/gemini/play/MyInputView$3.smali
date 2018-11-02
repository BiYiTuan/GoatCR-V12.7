.class Lcom/gemini/play/MyInputView$3;
.super Ljava/lang/Object;
.source "MyInputView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyInputView;->showInputView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyInputView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyInputView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/gemini/play/MyInputView$3;->this$0:Lcom/gemini/play/MyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/gemini/play/MyInputView$3;->this$0:Lcom/gemini/play/MyInputView;

    invoke-virtual {v0}, Lcom/gemini/play/MyInputView;->clearAnimation()V

    .line 109
    iget-object v0, p0, Lcom/gemini/play/MyInputView$3;->this$0:Lcom/gemini/play/MyInputView;

    invoke-virtual {v0}, Lcom/gemini/play/MyInputView;->listFocus()V

    .line 110
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 116
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 122
    return-void
.end method
