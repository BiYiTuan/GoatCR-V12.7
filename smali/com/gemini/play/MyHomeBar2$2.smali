.class Lcom/gemini/play/MyHomeBar2$2;
.super Ljava/lang/Object;
.source "MyHomeBar2.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyHomeBar2;->selectIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyHomeBar2;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/gemini/play/MyHomeBar2;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar2$2;->this$0:Lcom/gemini/play/MyHomeBar2;

    iput p2, p0, Lcom/gemini/play/MyHomeBar2$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/16 v2, 0xff

    .line 189
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2$2;->this$0:Lcom/gemini/play/MyHomeBar2;

    invoke-static {v0}, Lcom/gemini/play/MyHomeBar2;->access$500(Lcom/gemini/play/MyHomeBar2;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2$2;->this$0:Lcom/gemini/play/MyHomeBar2;

    invoke-static {v0}, Lcom/gemini/play/MyHomeBar2;->access$600(Lcom/gemini/play/MyHomeBar2;)[Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/gemini/play/MyHomeBar2$2;->val$index:I

    aget-object v0, v0, v1

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 191
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2$2;->this$0:Lcom/gemini/play/MyHomeBar2;

    invoke-static {v0}, Lcom/gemini/play/MyHomeBar2;->access$600(Lcom/gemini/play/MyHomeBar2;)[Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/gemini/play/MyHomeBar2$2;->val$index:I

    aget-object v0, v0, v1

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 198
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 204
    return-void
.end method
