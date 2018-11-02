.class Lcom/gemini/goat/ValidateActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "ValidateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/goat/ValidateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/goat/ValidateActivity;


# direct methods
.method constructor <init>(Lcom/gemini/goat/ValidateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/goat/ValidateActivity;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/gemini/goat/ValidateActivity$1;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 250
    new-instance v0, Lcom/gemini/play/MyDialog2$Builder;

    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$1;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-direct {v0, v1}, Lcom/gemini/play/MyDialog2$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    .local v0, "builder":Lcom/gemini/play/MyDialog2$Builder;
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$1;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog2$Builder;->setTitle(Ljava/lang/String;)Lcom/gemini/play/MyDialog2$Builder;

    move-result-object v1

    .line 252
    invoke-virtual {v1, p3}, Lcom/gemini/play/MyDialog2$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog2$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/gemini/goat/ValidateActivity$1$1;

    invoke-direct {v3, p0, p4}, Lcom/gemini/goat/ValidateActivity$1$1;-><init>(Lcom/gemini/goat/ValidateActivity$1;Landroid/webkit/JsResult;)V

    .line 253
    invoke-virtual {v1, v2, v3}, Lcom/gemini/play/MyDialog2$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog2$Builder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/gemini/play/MyDialog2$Builder;->create()Lcom/gemini/play/MyDialog2;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Lcom/gemini/play/MyDialog2;->show()V

    .line 262
    const/4 v1, 0x1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 267
    new-instance v0, Lcom/gemini/play/MyDialog$Builder;

    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$1;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-direct {v0, v1}, Lcom/gemini/play/MyDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 268
    .local v0, "builder":Lcom/gemini/play/MyDialog$Builder;
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$1;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1, p3}, Lcom/gemini/play/MyDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/gemini/goat/ValidateActivity$1$3;

    invoke-direct {v3, p0, p4}, Lcom/gemini/goat/ValidateActivity$1$3;-><init>(Lcom/gemini/goat/ValidateActivity$1;Landroid/webkit/JsResult;)V

    .line 270
    invoke-virtual {v1, v2, v3}, Lcom/gemini/play/MyDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/gemini/goat/ValidateActivity$1$2;

    invoke-direct {v3, p0, p4}, Lcom/gemini/goat/ValidateActivity$1$2;-><init>(Lcom/gemini/goat/ValidateActivity$1;Landroid/webkit/JsResult;)V

    .line 276
    invoke-virtual {v1, v2, v3}, Lcom/gemini/play/MyDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog$Builder;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Lcom/gemini/play/MyDialog;->show()V

    .line 284
    const/4 v1, 0x1

    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 289
    new-instance v0, Lcom/gemini/play/MyDialogPrompt$Builder;

    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$1;->this$0:Lcom/gemini/goat/ValidateActivity;

    invoke-direct {v0, v1}, Lcom/gemini/play/MyDialogPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    .local v0, "builder":Lcom/gemini/play/MyDialogPrompt$Builder;
    iget-object v1, p0, Lcom/gemini/goat/ValidateActivity$1;->this$0:Lcom/gemini/goat/ValidateActivity;

    const v2, 0x7f0b00b7

    invoke-virtual {v1, v2}, Lcom/gemini/goat/ValidateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyDialogPrompt$Builder;->setTitle(Ljava/lang/String;)Lcom/gemini/play/MyDialogPrompt$Builder;

    move-result-object v1

    .line 292
    invoke-virtual {v1, p3}, Lcom/gemini/play/MyDialogPrompt$Builder;->setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialogPrompt$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/gemini/goat/ValidateActivity$1$5;

    invoke-direct {v3, p0, v0, p5}, Lcom/gemini/goat/ValidateActivity$1$5;-><init>(Lcom/gemini/goat/ValidateActivity$1;Lcom/gemini/play/MyDialogPrompt$Builder;Landroid/webkit/JsPromptResult;)V

    .line 293
    invoke-virtual {v1, v2, v3}, Lcom/gemini/play/MyDialogPrompt$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialogPrompt$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/gemini/goat/ValidateActivity$1$4;

    invoke-direct {v3, p0, p5}, Lcom/gemini/goat/ValidateActivity$1$4;-><init>(Lcom/gemini/goat/ValidateActivity$1;Landroid/webkit/JsPromptResult;)V

    .line 300
    invoke-virtual {v1, v2, v3}, Lcom/gemini/play/MyDialogPrompt$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialogPrompt$Builder;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Lcom/gemini/play/MyDialogPrompt$Builder;->create()Lcom/gemini/play/MyDialogPrompt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gemini/play/MyDialogPrompt;->show()V

    .line 308
    const/4 v1, 0x1

    return v1
.end method
