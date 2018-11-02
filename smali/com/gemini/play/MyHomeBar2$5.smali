.class Lcom/gemini/play/MyHomeBar2$5;
.super Ljava/lang/Object;
.source "MyHomeBar2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyHomeBar2;->showUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyHomeBar2;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyHomeBar2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar2$5;->this$0:Lcom/gemini/play/MyHomeBar2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar2$5;->this$0:Lcom/gemini/play/MyHomeBar2;

    invoke-static {v0}, Lcom/gemini/play/MyHomeBar2;->access$700(Lcom/gemini/play/MyHomeBar2;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 367
    return-void
.end method
