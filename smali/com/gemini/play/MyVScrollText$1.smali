.class Lcom/gemini/play/MyVScrollText$1;
.super Ljava/lang/Object;
.source "MyVScrollText.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVScrollText;->scrollRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVScrollText;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVScrollText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVScrollText;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/gemini/play/MyVScrollText$1;->this$0:Lcom/gemini/play/MyVScrollText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gemini/play/MyVScrollText$1;->this$0:Lcom/gemini/play/MyVScrollText;

    invoke-virtual {v0}, Lcom/gemini/play/MyVScrollText;->clearAnimation()V

    .line 67
    iget-object v0, p0, Lcom/gemini/play/MyVScrollText$1;->this$0:Lcom/gemini/play/MyVScrollText;

    invoke-virtual {v0}, Lcom/gemini/play/MyVScrollText;->listFocus()V

    .line 68
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 74
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 80
    return-void
.end method
