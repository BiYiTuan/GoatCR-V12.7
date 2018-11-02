.class Lcom/gemini/goat/ValidateActivity$1$5;
.super Ljava/lang/Object;
.source "ValidateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/goat/ValidateActivity$1;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/goat/ValidateActivity$1;

.field final synthetic val$builder:Lcom/gemini/play/MyDialogPrompt$Builder;

.field final synthetic val$result:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Lcom/gemini/goat/ValidateActivity$1;Lcom/gemini/play/MyDialogPrompt$Builder;Landroid/webkit/JsPromptResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/goat/ValidateActivity$1;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$1$5;->this$1:Lcom/gemini/goat/ValidateActivity$1;

    iput-object p2, p0, Lcom/gemini/goat/ValidateActivity$1$5;->val$builder:Lcom/gemini/play/MyDialogPrompt$Builder;

    iput-object p3, p0, Lcom/gemini/goat/ValidateActivity$1$5;->val$result:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$1$5;->val$builder:Lcom/gemini/play/MyDialogPrompt$Builder;

    invoke-virtual {v1}, Lcom/gemini/play/MyDialogPrompt$Builder;->getContentEditText()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$1$5;->val$result:Landroid/webkit/JsPromptResult;

    invoke-virtual {v1, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 297
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 298
    return-void
.end method
