.class Lcom/gemini/play/MyInputView$4;
.super Ljava/lang/Object;
.source "MyInputView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyInputView;->hideInputView()V
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
    .line 132
    iput-object p1, p0, Lcom/gemini/play/MyInputView$4;->this$0:Lcom/gemini/play/MyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/gemini/play/MyInputView$4;->this$0:Lcom/gemini/play/MyInputView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInputView;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 142
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 148
    return-void
.end method
