.class Lcom/gemini/play/MyDialog2$Builder$2;
.super Ljava/lang/Object;
.source "MyDialog2.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyDialog2$Builder;->create()Lcom/gemini/play/MyDialog2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyDialog2$Builder;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyDialog2$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyDialog2$Builder;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/gemini/play/MyDialog2$Builder$2;->this$0:Lcom/gemini/play/MyDialog2$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 153
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 155
    const v0, 0x7f0a0006

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    const v0, 0x7f0a0008

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
