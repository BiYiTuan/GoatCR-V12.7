.class public Lcom/gemini/play/MyDialog2$Builder;
.super Ljava/lang/Object;
.source "MyDialog2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyDialog2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancelButton:Landroid/widget/Button;

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private messageText:Landroid/widget/TextView;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private okButton:Landroid/widget/Button;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/gemini/play/MyDialog2$Builder;->context:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyDialog2$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialog2$Builder;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyDialog2$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialog2$Builder;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyDialog2$Builder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialog2$Builder;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->okButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/gemini/play/MyDialog2;
    .locals 11

    .prologue
    const v10, 0x7f070081

    const/16 v7, 0x8

    const/4 v9, -0x1

    const/high16 v8, 0x40e00000    # 7.0f

    .line 125
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 126
    .local v4, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v3

    .line 128
    .local v3, "rate":F
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 130
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/gemini/play/MyDialog2;

    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->context:Landroid/content/Context;

    const v6, 0x7f0c009e

    invoke-direct {v0, v5, v6}, Lcom/gemini/play/MyDialog2;-><init>(Landroid/content/Context;I)V

    .line 131
    .local v0, "dialog":Lcom/gemini/play/MyDialog2;
    const v5, 0x7f090032

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 132
    .local v2, "layout":Landroid/view/View;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v9, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Lcom/gemini/play/MyDialog2;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const v5, 0x7f070113

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->okButton:Landroid/widget/Button;

    .line 136
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->okButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyDialog2$Builder$1;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyDialog2$Builder$1;-><init>(Lcom/gemini/play/MyDialog2$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 149
    const v5, 0x7f0700fe

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->cancelButton:Landroid/widget/Button;

    .line 150
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->cancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyDialog2$Builder$2;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyDialog2$Builder$2;-><init>(Lcom/gemini/play/MyDialog2$Builder;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 166
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 168
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->okButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gemini/play/MyDialog2$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->okButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyDialog2$Builder$3;

    invoke-direct {v6, p0, v0}, Lcom/gemini/play/MyDialog2$Builder$3;-><init>(Lcom/gemini/play/MyDialog2$Builder;Lcom/gemini/play/MyDialog2;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 186
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->cancelButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/gemini/play/MyDialog2$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v5, :cond_1

    .line 189
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->cancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/gemini/play/MyDialog2$Builder$4;

    invoke-direct {v6, p0, v0}, Lcom/gemini/play/MyDialog2$Builder$4;-><init>(Lcom/gemini/play/MyDialog2$Builder;Lcom/gemini/play/MyDialog2;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :cond_1
    :goto_1
    const v5, 0x7f0700f0

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->messageText:Landroid/widget/TextView;

    .line 205
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->message:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 206
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->messageText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/gemini/play/MyDialog2$Builder;->message:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_2
    :goto_2
    invoke-virtual {v0, v2}, Lcom/gemini/play/MyDialog2;->setContentView(Landroid/view/View;)V

    .line 217
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->okButton:Landroid/widget/Button;

    mul-float v6, v8, v3

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 218
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 219
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->cancelButton:Landroid/widget/Button;

    mul-float v6, v8, v3

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextSize(F)V

    .line 220
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 221
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->messageText:Landroid/widget/TextView;

    mul-float v6, v8, v3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 222
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->messageText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 225
    new-instance v5, Lcom/gemini/play/MyDialog2$Builder$5;

    invoke-direct {v5, p0}, Lcom/gemini/play/MyDialog2$Builder$5;-><init>(Lcom/gemini/play/MyDialog2$Builder;)V

    invoke-virtual {v0, v5}, Lcom/gemini/play/MyDialog2;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 253
    return-object v0

    .line 181
    :cond_3
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 200
    :cond_4
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 207
    :cond_5
    iget-object v5, p0, Lcom/gemini/play/MyDialog2$Builder;->contentView:Landroid/view/View;

    if-eqz v5, :cond_2

    .line 210
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 211
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/gemini/play/MyDialog2$Builder;->contentView:Landroid/view/View;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 213
    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public setContentView(Landroid/view/View;)Lcom/gemini/play/MyDialog2$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/gemini/play/MyDialog2$Builder;->contentView:Landroid/view/View;

    .line 84
    return-object p0
.end method

.method public setMessage(I)Lcom/gemini/play/MyDialog2$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->message:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialog2$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/gemini/play/MyDialog2$Builder;->message:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog2$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->context:Landroid/content/Context;

    .line 111
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->negativeButtonText:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/gemini/play/MyDialog2$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog2$Builder;
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/gemini/play/MyDialog2$Builder;->negativeButtonText:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/gemini/play/MyDialog2$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 120
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog2$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->context:Landroid/content/Context;

    .line 96
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->positiveButtonText:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/gemini/play/MyDialog2$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialog2$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/gemini/play/MyDialog2$Builder;->positiveButtonText:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/gemini/play/MyDialog2$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    return-object p0
.end method

.method public setTitle(I)Lcom/gemini/play/MyDialog2$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialog2$Builder;->title:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/gemini/play/MyDialog2$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/gemini/play/MyDialog2$Builder;->title:Ljava/lang/String;

    .line 79
    return-object p0
.end method
