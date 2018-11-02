.class final Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
.super Ljava/lang/Object;
.source "TtmlStyle.java"


# static fields
.field public static final FONT_SIZE_UNIT_EM:S = 0x2s

.field public static final FONT_SIZE_UNIT_PERCENT:S = 0x3s

.field public static final FONT_SIZE_UNIT_PIXEL:S = 0x1s

.field private static final OFF:S = 0x0s

.field private static final ON:S = 0x1s

.field public static final STYLE_BOLD:S = 0x1s

.field public static final STYLE_BOLD_ITALIC:S = 0x3s

.field public static final STYLE_ITALIC:S = 0x2s

.field public static final STYLE_NORMAL:S = 0x0s

.field public static final UNSPECIFIED:S = -0x1s


# instance fields
.field private backgroundColor:I

.field private backgroundColorSpecified:Z

.field private bold:S

.field private color:I

.field private colorSpecified:Z

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:S

.field private id:Ljava/lang/String;

.field private inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

.field private italic:S

.field private linethrough:S

.field private textAlign:Landroid/text/Layout$Alignment;

.field private underline:S


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    .line 48
    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    .line 49
    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    .line 50
    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    .line 51
    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    return-void
.end method

.method private inherit(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 2
    .param p1, "ancestor"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .param p2, "chaining"    # Z

    .prologue
    const/4 v1, -0x1

    .line 170
    if-eqz p1, :cond_8

    .line 171
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->colorSpecified:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->colorSpecified:Z

    if-eqz v0, :cond_0

    .line 172
    iget v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->color:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setColor(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 174
    :cond_0
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    if-ne v0, v1, :cond_1

    .line 175
    iget-short v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    .line 177
    :cond_1
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    if-ne v0, v1, :cond_2

    .line 178
    iget-short v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 181
    iget-object v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    .line 183
    :cond_3
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    if-ne v0, v1, :cond_4

    .line 184
    iget-short v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    .line 186
    :cond_4
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    if-ne v0, v1, :cond_5

    .line 187
    iget-short v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    .line 189
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 190
    iget-object v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 192
    :cond_6
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    if-ne v0, v1, :cond_7

    .line 193
    iget-short v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    .line 194
    iget v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSize:F

    iput v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSize:F

    .line 197
    :cond_7
    if-eqz p2, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColorSpecified:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColorSpecified:Z

    if-eqz v0, :cond_8

    .line 198
    iget v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 201
    :cond_8
    return-object p0
.end method


# virtual methods
.method public chain(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "ancestor"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inherit(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->color:I

    return v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()S
    .locals 1

    .prologue
    .line 233
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()S
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 63
    iget-short v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    if-ne v2, v1, :cond_1

    iget-short v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    .line 68
    .local v0, "style":S
    iget-short v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    if-eq v2, v1, :cond_2

    .line 69
    iget-short v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    add-int/2addr v2, v0

    int-to-short v0, v2

    .line 71
    :cond_2
    iget-short v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    if-eq v2, v1, :cond_0

    .line 72
    iget-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    add-int/2addr v1, v0

    int-to-short v0, v1

    goto :goto_0
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public hasBackgroundColorSpecified()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColorSpecified:Z

    return v0
.end method

.method public hasColorSpecified()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->colorSpecified:Z

    return v0
.end method

.method public inherit(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "ancestor"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inherit(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0
.end method

.method public isLinethrough()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    iget-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderline()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    iget-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundColor(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColor:I

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColorSpecified:Z

    .line 129
    return-object p0
.end method

.method public setBold(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 3
    .param p1, "isBold"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 138
    if-eqz p1, :cond_1

    :goto_1
    iput-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    .line 139
    return-object p0

    :cond_0
    move v0, v2

    .line 137
    goto :goto_0

    :cond_1
    move v1, v2

    .line 138
    goto :goto_1
.end method

.method public setColor(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 113
    iput p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->color:I

    .line 114
    iput-boolean v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->colorSpecified:Z

    .line 115
    return-object p0

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 103
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    .line 104
    return-object p0

    .line 102
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontSize(F)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "fontSize"    # F

    .prologue
    .line 223
    iput p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSize:F

    .line 224
    return-object p0
.end method

.method public setFontSizeUnit(S)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "unit"    # S

    .prologue
    .line 228
    iput-short p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    .line 229
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setItalic(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 2
    .param p1, "isItalic"    # Z

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 144
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    iput-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    .line 145
    return-object p0

    :cond_1
    move v0, v1

    .line 143
    goto :goto_0
.end method

.method public setLinethrough(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 3
    .param p1, "linethrough"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 83
    if-eqz p1, :cond_1

    :goto_1
    iput-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    .line 84
    return-object p0

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "textAlign"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 219
    return-object p0
.end method

.method public setUnderline(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 3
    .param p1, "underline"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 93
    if-eqz p1, :cond_1

    :goto_1
    iput-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    .line 94
    return-object p0

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v1, v2

    .line 93
    goto :goto_1
.end method
