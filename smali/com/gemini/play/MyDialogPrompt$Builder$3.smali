.class Lcom/gemini/play/MyDialogPrompt$Builder$3;
.super Ljava/lang/Object;
.source "MyDialogPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Lcom/gemini/play/MyDialogPrompt;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyDialogPrompt$Builder;Lcom/gemini/play/MyDialogPrompt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyDialogPrompt$Builder;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/gemini/play/MyDialogPrompt$Builder$3;->this$0:Lcom/gemini/play/MyDialogPrompt$Builder;

    iput-object p2, p0, Lcom/gemini/play/MyDialogPrompt$Builder$3;->val$dialog:Lcom/gemini/play/MyDialogPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder$3;->this$0:Lcom/gemini/play/MyDialogPrompt$Builder;

    invoke-static {v0}, Lcom/gemini/play/MyDialogPrompt$Builder;->access$000(Lcom/gemini/play/MyDialogPrompt$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/gemini/play/MyDialogPrompt$Builder$3;->val$dialog:Lcom/gemini/play/MyDialogPrompt;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 184
    return-void
.end method
