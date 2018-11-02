.class Lcom/gemini/play/MyBackInfoView$4;
.super Ljava/lang/Object;
.source "MyBackInfoView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackInfoView;->showInfoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyBackInfoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyBackInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyBackInfoView;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/gemini/play/MyBackInfoView$4;->this$0:Lcom/gemini/play/MyBackInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView$4;->this$0:Lcom/gemini/play/MyBackInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyBackInfoView;->clearAnimation()V

    .line 198
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 210
    return-void
.end method
