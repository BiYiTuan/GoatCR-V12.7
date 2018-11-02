.class Lcom/gemini/play/MyPreviewView$1$1;
.super Ljava/lang/Thread;
.source "MyPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gemini/play/MyPreviewView$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gemini/play/MyPreviewView$1;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/gemini/play/MyPreviewView$1;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/gemini/play/MyPreviewView$1;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iput-wide p2, p0, Lcom/gemini/play/MyPreviewView$1$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 104
    const-string v8, ""

    .line 105
    .local v8, "url":Ljava/lang/String;
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v9

    const-string v10, "quanxing"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 107
    sget-object v9, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->j2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    :goto_0
    invoke-static {v8}, Lcom/gemini/play/MyGemini;->getStatue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "statues":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setOnItemClickListener statues:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 115
    iget-object v9, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-virtual {v9}, Lcom/gemini/play/MyPreviewView;->showViewTimeout()V

    .line 117
    const-string v9, "ERROR"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 119
    iget-object v9, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 120
    iget-object v9, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 122
    .local v1, "msg":Landroid/os/Message;
    const/4 v9, 0x3

    iput v9, v1, Landroid/os/Message;->what:I

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "data":Landroid/os/Bundle;
    const-string v9, "data"

    iget-wide v10, p0, Lcom/gemini/play/MyPreviewView$1$1;->val$time:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 126
    iget-object v9, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 110
    .end local v3    # "statues":Ljava/lang/String;
    :cond_2
    sget-object v9, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/gemini/play/LIVEplayer;->getVideoUrl(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/gemini/play/MGplayer;->ju(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/gemini/play/LIVEplayer;->currentLine:I

    invoke-static {v9, v10}, Lcom/gemini/play/LIVEplayer;->getVideoUrlFromUrlss(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 130
    .restart local v3    # "statues":Ljava/lang/String;
    :cond_3
    const-string v9, "#"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "statue":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x3

    if-lt v9, v10, :cond_1

    .line 133
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 134
    .local v6, "time_start":J
    const/4 v9, 0x2

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 136
    .local v4, "time_end":J
    iget-wide v10, p0, Lcom/gemini/play/MyPreviewView$1$1;->val$time:J

    cmp-long v9, v10, v6

    if-lez v9, :cond_5

    iget-wide v10, p0, Lcom/gemini/play/MyPreviewView$1$1;->val$time:J

    cmp-long v9, v10, v4

    if-gez v9, :cond_5

    .line 138
    iget-object v9, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 139
    iget-object v9, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    :cond_4
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 141
    .restart local v1    # "msg":Landroid/os/Message;
    const/4 v9, 0x3

    iput v9, v1, Landroid/os/Message;->what:I

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string v9, "data"

    iget-wide v10, p0, Lcom/gemini/play/MyPreviewView$1$1;->val$time:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 145
    iget-object v9, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView;->rHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x64

    invoke-virtual {v9, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 147
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    iget-wide v10, p0, Lcom/gemini/play/MyPreviewView$1$1;->val$time:J

    cmp-long v9, v10, v6

    if-gtz v9, :cond_6

    .line 149
    iget-object v9, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v9}, Lcom/gemini/play/MyPreviewView;->access$300(Lcom/gemini/play/MyPreviewView;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v10, v10, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v10}, Lcom/gemini/play/MyPreviewView;->access$300(Lcom/gemini/play/MyPreviewView;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0b0098

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 151
    :cond_6
    iget-wide v10, p0, Lcom/gemini/play/MyPreviewView$1$1;->val$time:J

    cmp-long v9, v10, v4

    if-ltz v9, :cond_1

    .line 153
    iget-object v9, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v9, v9, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v9}, Lcom/gemini/play/MyPreviewView;->access$300(Lcom/gemini/play/MyPreviewView;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/gemini/play/MyPreviewView$1$1;->this$1:Lcom/gemini/play/MyPreviewView$1;

    iget-object v10, v10, Lcom/gemini/play/MyPreviewView$1;->this$0:Lcom/gemini/play/MyPreviewView;

    invoke-static {v10}, Lcom/gemini/play/MyPreviewView;->access$300(Lcom/gemini/play/MyPreviewView;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0b0099

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/gemini/play/MyToast;->makeText(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1
.end method
