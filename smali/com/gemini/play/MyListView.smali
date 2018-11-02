.class public Lcom/gemini/play/MyListView;
.super Ljava/lang/Object;
.source "MyListView.java"


# instance fields
.field private listview1:Lcom/gemini/play/MyListView1;

.field private listview2:Lcom/gemini/play/MyListView2;

.field private used_id:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "listview"    # Ljava/lang/Object;
    .param p2, "used"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    .line 9
    iput-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    .line 11
    iput v1, p0, Lcom/gemini/play/MyListView;->used_id:I

    .line 33
    iput p2, p0, Lcom/gemini/play/MyListView;->used_id:I

    .line 35
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    if-ne v0, v1, :cond_1

    .line 36
    check-cast p1, Lcom/gemini/play/MyListView1;

    .end local p1    # "listview":Ljava/lang/Object;
    iput-object p1, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 37
    .restart local p1    # "listview":Ljava/lang/Object;
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 38
    check-cast p1, Lcom/gemini/play/MyListView2;

    .end local p1    # "listview":Ljava/lang/Object;
    iput-object p1, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    goto :goto_0
.end method


# virtual methods
.method public currentID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    sget-object v0, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    .line 176
    :goto_0
    return-object v0

    .line 174
    :cond_0
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    sget-object v0, Lcom/gemini/play/MyListView2;->currentID:Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->getCurrentID()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView2;->getCurrentID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidePlayList()V
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->hidePlayList()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView2;->hidePlayList()V

    goto :goto_0
.end method

.method public isShown()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->isShown()Z

    move-result v0

    .line 97
    :goto_0
    return v0

    .line 95
    :cond_0
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 96
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView2;->isShown()Z

    move-result v0

    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listFocus()V
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->listFocus()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView2;->listFocus()V

    goto :goto_0
.end method

.method public setCurrentID(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 148
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView1;->setCurrentID(I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView2;->setCurrentID(I)V

    goto :goto_0
.end method

.method public setCurrentID(Ljava/lang/String;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    .line 85
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView1;->setCurrentID(Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView2;->setCurrentID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInterface(Lcom/gemini/play/ListViewInterface;)V
    .locals 2
    .param p1, "onLivePressed"    # Lcom/gemini/play/ListViewInterface;

    .prologue
    .line 156
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView1;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView2;->setInterface(Lcom/gemini/play/ListViewInterface;)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "gone"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView1;->setVisibility(I)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView2;->setVisibility(I)V

    goto :goto_0
.end method

.method public set_ad_Image(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "livelist_ad_image"    # Landroid/widget/ImageView;

    .prologue
    .line 164
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView1;->set_ad_Image(Landroid/widget/ImageView;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView2;->set_ad_Image(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public set_currentID(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 181
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    sput-object p1, Lcom/gemini/play/MyListView1;->currentID:Ljava/lang/String;

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    sput-object p1, Lcom/gemini/play/MyListView2;->currentID:Ljava/lang/String;

    goto :goto_0
.end method

.method public showFindPlayList(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 118
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    if-ne v0, v2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/gemini/play/MyListView1;->showPlayList(ILjava/lang/String;Z)V

    .line 120
    :cond_0
    return-void
.end method

.method public showPlayList(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 60
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView1;->showPlayList(I)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView2;->showPlayList(I)V

    goto :goto_0
.end method

.method public showPlayList(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 110
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView1;->showPlayList(Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0, p1}, Lcom/gemini/play/MyListView2;->showPlayList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showPlayList(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "currentType"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 68
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/gemini/play/MyListView1;->showPlayList(ILjava/lang/String;Z)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0, p1, p2}, Lcom/gemini/play/MyListView2;->showPlayList(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public showViewNoTimeout()V
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->showViewNoTimeout()V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView2;->showViewNoTimeout()V

    goto :goto_0
.end method

.method public showViewTimeout()V
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview1:Lcom/gemini/play/MyListView1;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView1;->showViewTimeout()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v0, p0, Lcom/gemini/play/MyListView;->used_id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/gemini/play/MyListView;->listview2:Lcom/gemini/play/MyListView2;

    invoke-virtual {v0}, Lcom/gemini/play/MyListView2;->showViewTimeout()V

    goto :goto_0
.end method
