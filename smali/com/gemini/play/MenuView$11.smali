.class final Lcom/gemini/play/MenuView$11;
.super Ljava/lang/Object;
.source "MenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MenuView;->unbundlingActivity(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/gemini/play/MenuView$11;->val$pHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 665
    new-instance v0, Lcom/gemini/play/MenuView$11$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/MenuView$11$1;-><init>(Lcom/gemini/play/MenuView$11;)V

    .line 682
    invoke-virtual {v0}, Lcom/gemini/play/MenuView$11$1;->start()V

    .line 684
    return-void
.end method
