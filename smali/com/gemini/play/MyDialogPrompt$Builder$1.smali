.class Lcom/gemini/play/MyDialogPrompt$Builder$1;
.super Ljava/lang/Object;
.source "MyDialogPrompt.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyDialogPrompt$Builder;->create()Lcom/gemini/play/MyDialogPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyDialogPrompt$Builder;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyDialogPrompt$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyDialogPrompt$Builder;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/gemini/play/MyDialogPrompt$Builder$1;->this$0:Lcom/gemini/play/MyDialogPrompt$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 148
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 150
    const v0, 0x7f0a0006

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    const v0, 0x7f0a0008

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
