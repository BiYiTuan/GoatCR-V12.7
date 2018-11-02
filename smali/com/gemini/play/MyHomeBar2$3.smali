.class Lcom/gemini/play/MyHomeBar2$3;
.super Ljava/lang/Object;
.source "MyHomeBar2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyHomeBar2;->download_defined(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyHomeBar2;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyHomeBar2;Landroid/app/AlertDialog$Builder;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar2$3;->this$0:Lcom/gemini/play/MyHomeBar2;

    iput-object p2, p0, Lcom/gemini/play/MyHomeBar2$3;->val$builder:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/gemini/play/MyHomeBar2$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2$3;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 339
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2$3;->this$0:Lcom/gemini/play/MyHomeBar2;

    iget-object v1, p0, Lcom/gemini/play/MyHomeBar2$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gemini/play/MyHomeBar2;->showUpdate(Ljava/lang/String;)V

    .line 340
    return-void
.end method
