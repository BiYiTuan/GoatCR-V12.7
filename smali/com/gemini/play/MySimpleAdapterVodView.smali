.class Lcom/gemini/play/MySimpleAdapterVodView;
.super Landroid/widget/SimpleAdapter;
.source "MySimpleAdapterVodView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;,
        Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    }
.end annotation


# instance fields
.field private _this:Landroid/content/Context;

.field private clickTemp:I

.field private current_index:I

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final pHandler:Landroid/os/Handler;

.field private rate:F

.field private selectedPosition:I

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v1, -0x1

    .line 43
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterVodView;->current_index:I

    .line 28
    iput v1, p0, Lcom/gemini/play/MySimpleAdapterVodView;->selectedPosition:I

    .line 34
    iput v1, p0, Lcom/gemini/play/MySimpleAdapterVodView;->clickTemp:I

    .line 70
    new-instance v0, Lcom/gemini/play/MySimpleAdapterVodView$1;

    invoke-direct {v0, p0}, Lcom/gemini/play/MySimpleAdapterVodView$1;-><init>(Lcom/gemini/play/MySimpleAdapterVodView;)V

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodView;->pHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/gemini/play/MySimpleAdapterVodView;->_this:Landroid/content/Context;

    .line 45
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p2, p0, Lcom/gemini/play/MySimpleAdapterVodView;->list:Ljava/util/ArrayList;

    .line 47
    invoke-direct {p0}, Lcom/gemini/play/MySimpleAdapterVodView;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodView;->_this:Landroid/content/Context;

    invoke-static {v0}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/gemini/play/MySimpleAdapterVodView;->typeFace:Landroid/graphics/Typeface;

    .line 57
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v0

    iput v0, p0, Lcom/gemini/play/MySimpleAdapterVodView;->rate:F

    .line 58
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 148
    const/16 v18, 0x0

    .line 150
    .local v18, "viewHolder2":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    if-nez p2, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MySimpleAdapterVodView;->_this:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 152
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v20, 0x7f090079

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 154
    new-instance v18, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;

    .end local v18    # "viewHolder2":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;-><init>(Lcom/gemini/play/MySimpleAdapterVodView;Lcom/gemini/play/MySimpleAdapterVodView$1;)V

    .line 155
    .restart local v18    # "viewHolder2":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    const v20, 0x7f070022

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$002(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 156
    const v20, 0x7f07000d

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$202(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 157
    const v20, 0x7f07001a

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$302(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 158
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    move-object/from16 v17, v18

    .line 172
    .local v17, "viewHolder":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$200(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/TextView;

    move-result-object v15

    .line 173
    .local v15, "vh":Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$300(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/TextView;

    move-result-object v19

    .line 174
    .local v19, "vt":Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$000(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v16

    .line 176
    .local v16, "vi":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gemini/play/MySimpleAdapterVodView;->rate:F

    move/from16 v20, v0

    const/high16 v21, 0x40c00000    # 6.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MySimpleAdapterVodView;->typeFace:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 178
    const/16 v20, 0xff

    const/16 v21, 0xc9

    const/16 v22, 0xe

    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    invoke-static {}, Lcom/gemini/play/MGplayer;->custom()Ljava/lang/String;

    move-result-object v20

    const-string v21, "msiptv"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 180
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gemini/play/MySimpleAdapterVodView;->rate:F

    move/from16 v20, v0

    const/high16 v21, 0x41000000    # 8.0f

    mul-float v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextSize(F)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MySimpleAdapterVodView;->typeFace:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    const/16 v20, 0xff

    const/16 v21, 0xff

    const/16 v22, 0xff

    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gemini/play/MySimpleAdapterVodView;->clickTemp:I

    move/from16 v20, v0

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 187
    const/16 v20, 0x0

    const/16 v21, 0xa2

    const/16 v22, 0xe8

    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 192
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 193
    .local v11, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v20, Lcom/gemini/play/MGplayer;->screenHeight:I

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x4006666666666666L    # 2.8

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 194
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/gemini/play/MySimpleAdapterVodView;->clickTemp:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 197
    const v20, 0x7f060061

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 202
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MySimpleAdapterVodView;->list:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 204
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 205
    .local v5, "ItemHaveLoadTmp":I
    const-string v20, "ItemHaveLoad"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 206
    const/4 v5, 0x1

    .line 208
    :cond_1
    const-string v20, "ItemHaveLoad"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v20, "ItemHaveLoad"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gemini/play/MySimpleAdapterVodView;->list:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 212
    move v4, v5

    .line 214
    .local v4, "ItemHaveLoad":I
    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$200(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/TextView;

    move-result-object v20

    const-string v21, "ItemInfo"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$300(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/TextView;

    move-result-object v21

    const-string v20, "ItemTitle"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    const-string v20, "ItemImageBit"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 218
    .local v8, "bimage2":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_5

    .line 220
    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$000(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 323
    :goto_3
    return-object p2

    .line 160
    .end local v4    # "ItemHaveLoad":I
    .end local v5    # "ItemHaveLoadTmp":I
    .end local v8    # "bimage2":Landroid/graphics/Bitmap;
    .end local v11    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "vh":Landroid/widget/TextView;
    .end local v16    # "vi":Landroid/widget/ImageView;
    .end local v17    # "viewHolder":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    .end local v19    # "vt":Landroid/widget/TextView;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "viewHolder2":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    check-cast v18, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;

    .restart local v18    # "viewHolder2":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    goto/16 :goto_0

    .line 189
    .restart local v15    # "vh":Landroid/widget/TextView;
    .restart local v16    # "vi":Landroid/widget/ImageView;
    .restart local v17    # "viewHolder":Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;
    .restart local v19    # "vt":Landroid/widget/TextView;
    :cond_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/graphics/Color;->rgb(III)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 199
    .restart local v11    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    const v20, 0x7f06005b

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 224
    .restart local v4    # "ItemHaveLoad":I
    .restart local v5    # "ItemHaveLoadTmp":I
    .restart local v8    # "bimage2":Landroid/graphics/Bitmap;
    .restart local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    const-string v20, "ItemImageUrl"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v14, v20

    check-cast v14, Ljava/lang/String;

    .line 225
    .local v14, "url":Ljava/lang/String;
    sget-object v20, Lcom/gemini/play/VODplayer;->listbitmapCache:Lcom/gemini/play/LruBitmapCache;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/gemini/play/LruBitmapCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 226
    .local v6, "b":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_6

    .line 228
    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$000(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 232
    :cond_6
    invoke-static/range {v17 .. v17}, Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;->access$000(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v20

    const v21, 0x7f0a005c

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 236
    move-object v7, v8

    .line 237
    .local v7, "bimage":Landroid/graphics/Bitmap;
    new-instance v13, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;-><init>(Lcom/gemini/play/MySimpleAdapterVodView;)V

    .line 238
    .local v13, "my_viewhold":Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;->setViewHolder(Lcom/gemini/play/MySimpleAdapterVodView$ViewHolder;)V

    .line 240
    const-string v20, "ItemImageUrl"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v9, v20

    check-cast v9, Ljava/lang/String;

    .line 241
    .local v9, "imageurl":Ljava/lang/String;
    invoke-virtual {v13, v9}, Lcom/gemini/play/MySimpleAdapterVodView$MyViewHolder;->setImageUrl(Ljava/lang/String;)V

    .line 243
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ItemImageUrl:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v20, "ItemImageUrl"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/gemini/play/MGplayer;->MyPrintln(Ljava/lang/String;)V

    .line 261
    new-instance v20, Lcom/gemini/play/MySimpleAdapterVodView$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v7, v4}, Lcom/gemini/play/MySimpleAdapterVodView$2;-><init>(Lcom/gemini/play/MySimpleAdapterVodView;Ljava/util/HashMap;Landroid/graphics/Bitmap;I)V

    .line 322
    invoke-virtual/range {v20 .. v20}, Lcom/gemini/play/MySimpleAdapterVodView$2;->start()V

    goto/16 :goto_3
.end method

.method public setSeclection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/gemini/play/MySimpleAdapterVodView;->clickTemp:I

    .line 62
    return-void
.end method
