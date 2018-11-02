.class Lcom/gemini/play/MyInfoView$5;
.super Ljava/lang/Object;
.source "MyInfoView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyInfoView;->hideInfoPanal()V
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
    .line 374
    iput-object p1, p0, Lcom/gemini/play/MyInfoView$5;->this$0:Lcom/gemini/play/MyInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/gemini/play/MyInfoView$5;->this$0:Lcom/gemini/play/MyInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyInfoView;->setVisibility(I)V

    .line 378
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 384
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 390
    return-void
.end method
