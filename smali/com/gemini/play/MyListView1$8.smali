.class Lcom/gemini/play/MyListView1$8;
.super Ljava/lang/Object;
.source "MyListView1.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyListView1;->showPlayList(ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyListView1;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyListView1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyListView1;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/gemini/play/MyListView1$8;->this$0:Lcom/gemini/play/MyListView1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 685
    iget-object v0, p0, Lcom/gemini/play/MyListView1$8;->this$0:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->clearAnimation()V

    .line 686
    iget-object v0, p0, Lcom/gemini/play/MyListView1$8;->this$0:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->show_ad_image()V

    .line 687
    iget-object v0, p0, Lcom/gemini/play/MyListView1$8;->this$0:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->listFocus()V

    .line 688
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 694
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 699
    return-void
.end method
