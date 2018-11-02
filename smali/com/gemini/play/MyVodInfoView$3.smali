.class Lcom/gemini/play/MyVodInfoView$3;
.super Ljava/lang/Object;
.source "MyVodInfoView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodInfoView;->hideInfoPanal()V
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
    .line 176
    iput-object p1, p0, Lcom/gemini/play/MyVodInfoView$3;->this$0:Lcom/gemini/play/MyVodInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/gemini/play/MyVodInfoView$3;->this$0:Lcom/gemini/play/MyVodInfoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyVodInfoView;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 192
    return-void
.end method
