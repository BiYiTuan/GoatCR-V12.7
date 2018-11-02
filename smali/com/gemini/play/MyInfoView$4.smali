.class Lcom/gemini/play/MyInfoView$4;
.super Ljava/lang/Object;
.source "MyInfoView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyInfoView;->showInfoPanal(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyInfoView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyInfoView;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/gemini/play/MyInfoView$4;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/gemini/play/MyInfoView$4;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyInfoView;->showViewTimeout()V

    .line 237
    iget-object v0, p0, Lcom/gemini/play/MyInfoView$4;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-virtual {v0}, Lcom/gemini/play/MyInfoView;->clearAnimation()V

    .line 238
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 244
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 250
    return-void
.end method
