.class Lcom/gemini/play/MyVodFind3$3;
.super Ljava/lang/Object;
.source "MyVodFind3.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodFind3;->init(Landroid/content/Context;Lcom/gemini/play/ListViewInterface;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodFind3;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodFind3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodFind3;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/gemini/play/MyVodFind3$3;->this$0:Lcom/gemini/play/MyVodFind3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 98
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 99
    const v0, 0x7f0a0006

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const v0, 0x7f0a0008

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
