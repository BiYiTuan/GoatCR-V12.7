.class Lcom/gemini/play/MyHomeBar2$1;
.super Ljava/lang/Object;
.source "MyHomeBar2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyHomeBar2;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gemini/play/MyHomeBar2;

.field final synthetic val$kk:I


# direct methods
.method constructor <init>(Lcom/gemini/play/MyHomeBar2;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/gemini/play/MyHomeBar2;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/gemini/play/MyHomeBar2$1;->this$0:Lcom/gemini/play/MyHomeBar2;

    iput p2, p0, Lcom/gemini/play/MyHomeBar2$1;->val$kk:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2$1;->this$0:Lcom/gemini/play/MyHomeBar2;

    invoke-static {v2}, Lcom/gemini/play/MyHomeBar2;->access$000(Lcom/gemini/play/MyHomeBar2;)I

    move-result v2

    iget v3, p0, Lcom/gemini/play/MyHomeBar2$1;->val$kk:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2$1;->this$0:Lcom/gemini/play/MyHomeBar2;

    iget v3, p0, Lcom/gemini/play/MyHomeBar2$1;->val$kk:I

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyHomeBar2;->selectIndex(I)V

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2$1;->this$0:Lcom/gemini/play/MyHomeBar2;

    iget v3, p0, Lcom/gemini/play/MyHomeBar2$1;->val$kk:I

    invoke-static {v2, v3}, Lcom/gemini/play/MyHomeBar2;->access$100(Lcom/gemini/play/MyHomeBar2;I)I

    move-result v1

    .line 128
    .local v1, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "styles["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/gemini/play/MyHomeBar2$1;->val$kk:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gemini/play/MyHomeBar2$1;->this$0:Lcom/gemini/play/MyHomeBar2;

    invoke-static {v3}, Lcom/gemini/play/MyHomeBar2;->access$200(Lcom/gemini/play/MyHomeBar2;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/gemini/play/MyHomeBar2$1;->val$kk:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2$1;->this$0:Lcom/gemini/play/MyHomeBar2;

    invoke-static {v2}, Lcom/gemini/play/MyHomeBar2;->access$200(Lcom/gemini/play/MyHomeBar2;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/gemini/play/MyHomeBar2$1;->val$kk:I

    aget-object v2, v2, v3

    const-string v3, "\\*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "defineds":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 134
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2$1;->this$0:Lcom/gemini/play/MyHomeBar2;

    const/4 v3, 0x3

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v2, v3, v4}, Lcom/gemini/play/MyHomeBar2;->access$300(Lcom/gemini/play/MyHomeBar2;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0    # "defineds":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 125
    .end local v1    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2$1;->this$0:Lcom/gemini/play/MyHomeBar2;

    iget v3, p0, Lcom/gemini/play/MyHomeBar2$1;->val$kk:I

    invoke-virtual {v2, v3}, Lcom/gemini/play/MyHomeBar2;->selectIndex(I)V

    goto :goto_0

    .line 138
    .restart local v1    # "index":I
    :cond_2
    iget-object v2, p0, Lcom/gemini/play/MyHomeBar2$1;->this$0:Lcom/gemini/play/MyHomeBar2;

    invoke-static {v2}, Lcom/gemini/play/MyHomeBar2;->access$400(Lcom/gemini/play/MyHomeBar2;)Lcom/gemini/play/LauncherInterface;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/gemini/play/LauncherInterface;->callback(I)V

    goto :goto_1
.end method
