.class Lcom/gemini/play/MyVodTopView$2;
.super Ljava/lang/Object;
.source "MyVodTopView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyVodTopView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyVodTopView;


# direct methods
.method constructor <init>(Lcom/gemini/play/MyVodTopView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyVodTopView;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/gemini/play/MyVodTopView$2;->this$0:Lcom/gemini/play/MyVodTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/gemini/play/MyVodTopView$2;->this$0:Lcom/gemini/play/MyVodTopView;

    invoke-static {v0}, Lcom/gemini/play/MyVodTopView;->access$100(Lcom/gemini/play/MyVodTopView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MenuView;->gridMenuInit(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/gemini/play/MyVodTopView$2;->this$0:Lcom/gemini/play/MyVodTopView;

    invoke-static {v0}, Lcom/gemini/play/MyVodTopView;->access$100(Lcom/gemini/play/MyVodTopView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/MenuView;->showAlertDialog(Landroid/content/Context;)V

    .line 81
    return-void
.end method
