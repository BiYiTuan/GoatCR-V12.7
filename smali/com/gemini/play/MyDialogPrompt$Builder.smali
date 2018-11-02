.class public Lcom/gemini/play/MyDialogPrompt$Builder;
.super Ljava/lang/Object;
.source "MyDialogPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gemini/play/MyDialogPrompt;
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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->context:Landroid/content/Context;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/gemini/play/MyDialogPrompt$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialogPrompt$Builder;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gemini/play/MyDialogPrompt$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialogPrompt$Builder;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gemini/play/MyDialogPrompt$Builder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialogPrompt$Builder;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->okButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gemini/play/MyDialogPrompt$Builder;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/gemini/play/MyDialogPrompt$Builder;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->cancelButton:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/gemini/play/MyDialogPrompt;
    .locals 13

    .prologue
    const v12, 0x7f070081

    const/16 v8, 0x8

    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v10, 0x40e00000    # 7.0f

    const/4 v9, -0x1

    .line 135
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/gemini/play/MGplayer;->getFontsType(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 136
    .local v5, "typeFace":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/gemini/play/MGplayer;->getFontsRate()F

    move-result v4

    .line 138
    .local v4, "rate":F
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 140
    .local v2, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/gemini/play/MyDialogPrompt;

    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->context:Landroid/content/Context;

    const v7, 0x7f0c009e

    invoke-direct {v0, v6, v7}, Lcom/gemini/play/MyDialogPrompt;-><init>(Landroid/content/Context;I)V

    .line 141
    .local v0, "dialog":Lcom/gemini/play/MyDialogPrompt;
    const v6, 0x7f090062

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->contentView:Landroid/view/View;

    .line 142
    .local v3, "layout":Landroid/view/View;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v9, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v6}, Lcom/gemini/play/MyDialogPrompt;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    const v6, 0x7f070113

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->okButton:Landroid/widget/Button;

    .line 145
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->okButton:Landroid/widget/Button;

    new-instance v7, Lcom/gemini/play/MyDialogPrompt$Builder$1;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyDialogPrompt$Builder$1;-><init>(Lcom/gemini/play/MyDialogPrompt$Builder;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 158
    const v6, 0x7f0700fe

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->cancelButton:Landroid/widget/Button;

    .line 159
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->cancelButton:Landroid/widget/Button;

    new-instance v7, Lcom/gemini/play/MyDialogPrompt$Builder$2;

    invoke-direct {v7, p0}, Lcom/gemini/play/MyDialogPrompt$Builder$2;-><init>(Lcom/gemini/play/MyDialogPrompt$Builder;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 177
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->okButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_0

    .line 180
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->okButton:Landroid/widget/Button;

    new-instance v7, Lcom/gemini/play/MyDialogPrompt$Builder$3;

    invoke-direct {v7, p0, v0}, Lcom/gemini/play/MyDialogPrompt$Builder$3;-><init>(Lcom/gemini/play/MyDialogPrompt$Builder;Lcom/gemini/play/MyDialogPrompt;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 195
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->cancelButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_1

    .line 198
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->cancelButton:Landroid/widget/Button;

    new-instance v7, Lcom/gemini/play/MyDialogPrompt$Builder$4;

    invoke-direct {v7, p0, v0}, Lcom/gemini/play/MyDialogPrompt$Builder$4;-><init>(Lcom/gemini/play/MyDialogPrompt$Builder;Lcom/gemini/play/MyDialogPrompt;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    :cond_1
    :goto_1
    const v6, 0x7f0700f0

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->messageText:Landroid/widget/TextView;

    .line 214
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->message:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 215
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->messageText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->message:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_2
    :goto_2
    invoke-virtual {v0, v3}, Lcom/gemini/play/MyDialogPrompt;->setContentView(Landroid/view/View;)V

    .line 226
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->okButton:Landroid/widget/Button;

    mul-float v7, v10, v4

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 227
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 228
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->cancelButton:Landroid/widget/Button;

    mul-float v7, v10, v4

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTextSize(F)V

    .line 229
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 230
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->messageText:Landroid/widget/TextView;

    mul-float v7, v11, v4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 231
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->messageText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    const v6, 0x7f07011a

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 234
    .local v1, "edittext":Landroid/widget/EditText;
    mul-float v6, v11, v4

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setTextSize(F)V

    .line 235
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    new-instance v6, Lcom/gemini/play/MyDialogPrompt$Builder$5;

    invoke-direct {v6, p0}, Lcom/gemini/play/MyDialogPrompt$Builder$5;-><init>(Lcom/gemini/play/MyDialogPrompt$Builder;)V

    invoke-virtual {v0, v6}, Lcom/gemini/play/MyDialogPrompt;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 268
    return-object v0

    .line 190
    .end local v1    # "edittext":Landroid/widget/EditText;
    :cond_3
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->okButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_4
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->cancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 216
    :cond_5
    iget-object v6, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->contentView:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 219
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 220
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 221
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->contentView:Landroid/view/View;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 222
    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public getContentEditText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->contentView:Landroid/view/View;

    const v1, 0x7f07011a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContentView(Landroid/view/View;)Lcom/gemini/play/MyDialogPrompt$Builder;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->contentView:Landroid/view/View;

    .line 89
    return-object p0
.end method

.method public setMessage(I)Lcom/gemini/play/MyDialogPrompt$Builder;
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->message:Ljava/lang/String;

    .line 61
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/gemini/play/MyDialogPrompt$Builder;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->message:Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialogPrompt$Builder;
    .locals 1
    .param p1, "negativeButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->context:Landroid/content/Context;

    .line 116
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->negativeButtonText:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialogPrompt$Builder;
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->negativeButtonText:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 125
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialogPrompt$Builder;
    .locals 1
    .param p1, "positiveButtonText"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->context:Landroid/content/Context;

    .line 101
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->positiveButtonText:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/gemini/play/MyDialogPrompt$Builder;
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->positiveButtonText:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    return-object p0
.end method

.method public setTitle(I)Lcom/gemini/play/MyDialogPrompt$Builder;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->title:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/gemini/play/MyDialogPrompt$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/gemini/play/MyDialogPrompt$Builder;->title:Ljava/lang/String;

    .line 84
    return-object p0
.end method
