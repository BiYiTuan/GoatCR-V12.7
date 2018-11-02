.class Lcom/gemini/play/MyLiveCollectView$3;
.super Ljava/lang/Object;
.source "MyLiveCollectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyLiveCollectView;->showView(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyLiveCollectView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyLiveCollectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyLiveCollectView;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/gemini/play/MyLiveCollectView$3;->this$0:Lcom/gemini/play/MyLiveCollectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-static {}, Lcom/gemini/play/MyLiveCollectView;->access$200()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 103
    return-void
.end method
