.class final Lcom/gemini/play/UpdateActivity$2;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/UpdateActivity;->startUpdate(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$builder:Lcom/gemini/play/MyDialog$Builder;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyDialog$Builder;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/gemini/play/UpdateActivity$2;->val$builder:Lcom/gemini/play/MyDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 140
    iget-object v0, p0, Lcom/gemini/play/UpdateActivity$2;->val$builder:Lcom/gemini/play/MyDialog$Builder;

    invoke-virtual {v0}, Lcom/gemini/play/MyDialog$Builder;->create()Lcom/gemini/play/MyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gemini/play/MyDialog;->cancel()V

    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 142
    return-void
.end method
