.class Lcom/gemini/play/MyBackInfoView$5;
.super Ljava/lang/Object;
.source "MyBackInfoView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyBackInfoView;->hideInfoPanal()V
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
    .line 282
    iput-object p1, p0, Lcom/gemini/play/MyBackInfoView$5;->this$0:Lcom/gemini/play/MyBackInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/gemini/play/MyBackInfoView$5;->this$0:Lcom/gemini/play/MyBackInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyBackInfoView;->setVisibility(I)V

    .line 286
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 292
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 298
    return-void
.end method
