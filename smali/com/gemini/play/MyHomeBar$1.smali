.class Lcom/gemini/play/MyHomeBar$1;
.super Ljava/lang/Object;
.source "MyHomeBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyHomeBar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyHomeBar;

.field final synthetic val$kk:I


# direct methods
.method constructor <init>(Lcom/gemini/play/MyHomeBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyHomeBar;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar$1;->this$0:Lcom/gemini/play/MyHomeBar;

    iput p2, p0, Lcom/gemini/play/MyHomeBar$1;->val$kk:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar$1;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v0}, Lcom/gemini/play/MyHomeBar;->access$000(Lcom/gemini/play/MyHomeBar;)I

    move-result v0

    iget v1, p0, Lcom/gemini/play/MyHomeBar$1;->val$kk:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar$1;->this$0:Lcom/gemini/play/MyHomeBar;

    iget v1, p0, Lcom/gemini/play/MyHomeBar$1;->val$kk:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/gemini/play/MyHomeBar$1;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v3}, Lcom/gemini/play/MyHomeBar;->access$000(Lcom/gemini/play/MyHomeBar;)I

    move-result v3

    iget v4, p0, Lcom/gemini/play/MyHomeBar$1;->val$kk:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/gemini/play/MyHomeBar;->selectIndex(III)V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar$1;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v0}, Lcom/gemini/play/MyHomeBar;->access$100(Lcom/gemini/play/MyHomeBar;)Lcom/gemini/play/LauncherInterface;

    move-result-object v0

    iget v1, p0, Lcom/gemini/play/MyHomeBar$1;->val$kk:I

    invoke-interface {v0, v1}, Lcom/gemini/play/LauncherInterface;->callback(I)V

    .line 83
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/gemini/play/MyHomeBar$1;->this$0:Lcom/gemini/play/MyHomeBar;

    iget v1, p0, Lcom/gemini/play/MyHomeBar$1;->val$kk:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/gemini/play/MyHomeBar$1;->this$0:Lcom/gemini/play/MyHomeBar;

    invoke-static {v3}, Lcom/gemini/play/MyHomeBar;->access$000(Lcom/gemini/play/MyHomeBar;)I

    move-result v3

    iget v4, p0, Lcom/gemini/play/MyHomeBar$1;->val$kk:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/gemini/play/MyHomeBar;->selectIndex(III)V

    goto :goto_0
.end method
