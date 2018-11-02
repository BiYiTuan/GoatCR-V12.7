.class Lcom/gemini/play/MyVodFind3View$3;
.super Ljava/lang/Object;
.source "MyVodFind3View.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFind3View;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFind3View;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind3View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind3View;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3View$3;->this$0:Lcom/gemini/play/MyVodFind3View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 123
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 124
    const v0, 0x7f0a0006

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const v0, 0x7f0a0008

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
