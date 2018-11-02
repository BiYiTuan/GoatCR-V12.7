.class final Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;
    }
.end annotation


# static fields
.field private static final CHAR_AMPERSAND:C = '&'

.field private static final CHAR_GREATER_THAN:C = '>'

.field private static final CHAR_LESS_THAN:C = '<'

.field private static final CHAR_SEMI_COLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final ENTITY_AMPERSAND:Ljava/lang/String; = "amp"

.field private static final ENTITY_GREATER_THAN:Ljava/lang/String; = "gt"

.field private static final ENTITY_LESS_THAN:Ljava/lang/String; = "lt"

.field private static final ENTITY_NON_BREAK_SPACE:Ljava/lang/String; = "nbsp"

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_ITALIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebvttCueParser"

.field private static final TAG_BOLD:Ljava/lang/String; = "b"

.field private static final TAG_CLASS:Ljava/lang/String; = "c"

.field private static final TAG_ITALIC:Ljava/lang/String; = "i"

.field private static final TAG_LANG:Ljava/lang/String; = "lang"

.field private static final TAG_UNDERLINE:Ljava/lang/String; = "u"

.field private static final TAG_VOICE:Ljava/lang/String; = "v"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method private applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "spannedText"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 135
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 149
    const-string v0, "WebvttCueParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring unsupported entity: \'&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_1
    return-void

    .line 135
    :sswitch_0
    const-string v1, "lt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "gt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "nbsp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "amp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 137
    :pswitch_0
    const/16 v0, 0x3c

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 140
    :pswitch_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 143
    :pswitch_2
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 146
    :pswitch_3
    const/16 v0, 0x26

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 135
    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_1
        0xd88 -> :sswitch_0
        0x179c4 -> :sswitch_3
        0x337f11 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private applySpansForTag(Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .param p1, "startTag"    # Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;
    .param p2, "spannedText"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v5, 0x21

    .line 169
    iget-object v3, p1, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_1
    return-void

    .line 169
    :sswitch_0
    const-string v4, "b"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 171
    :pswitch_0
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p1, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->position:I

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 175
    :pswitch_1
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p1, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->position:I

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 179
    :pswitch_2
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v1, p1, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->position:I

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p2, v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x69 -> :sswitch_1
        0x75 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private findEndOfTag(Ljava/lang/String;I)I
    .locals 2
    .param p1, "markup"    # Ljava/lang/String;
    .param p2, "startPos"    # I

    .prologue
    .line 130
    const/16 v1, 0x3e

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 131
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private isSupportedTag(Ljava/lang/String;)Z
    .locals 4
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 164
    :pswitch_0
    return v0

    .line 155
    :sswitch_0
    const-string v3, "b"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "c"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "i"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "lang"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "u"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "v"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x63 -> :sswitch_1
        0x69 -> :sswitch_2
        0x75 -> :sswitch_4
        0x76 -> :sswitch_5
        0x3291ee -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private tokenizeTag(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "fullTagExpression"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    .line 199
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    const/4 v0, 0x0

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 202
    :cond_1
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 17
    .param p1, "markup"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 59
    .local v10, "spannedText":Landroid/text/SpannableStringBuilder;
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 61
    .local v12, "startTagStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;>;"
    const/4 v7, 0x0

    .line 62
    .local v7, "pos":I
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v7, v14, :cond_c

    .line 63
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 64
    .local v2, "curr":C
    sparse-switch v2, :sswitch_data_0

    .line 110
    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 111
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 66
    :sswitch_0
    add-int/lit8 v14, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v14, v15, :cond_1

    .line 67
    add-int/lit8 v7, v7, 0x1

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    move v6, v7

    .line 71
    .local v6, "ltPos":I
    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2f

    if-ne v14, v15, :cond_3

    const/4 v4, 0x1

    .line 72
    .local v4, "isClosingTag":Z
    :goto_1
    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v7

    .line 73
    add-int/lit8 v14, v7, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2f

    if-ne v14, v15, :cond_4

    const/4 v5, 0x1

    .line 75
    .local v5, "isVoidTag":Z
    :goto_2
    if-eqz v4, :cond_5

    const/4 v14, 0x2

    :goto_3
    add-int v15, v6, v14

    if-eqz v5, :cond_6

    add-int/lit8 v14, v7, -0x2

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->tokenizeTag(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 77
    .local v13, "tagTokens":[Ljava/lang/String;
    if-eqz v13, :cond_0

    const/4 v14, 0x0

    aget-object v14, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 80
    if-eqz v4, :cond_7

    .line 83
    :cond_2
    invoke-virtual {v12}, Ljava/util/Stack;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    .line 86
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;

    .line 87
    .local v11, "startTag":Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v10}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->applySpansForTag(Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;)V

    .line 88
    iget-object v14, v11, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto/16 :goto_0

    .line 71
    .end local v4    # "isClosingTag":Z
    .end local v5    # "isVoidTag":Z
    .end local v11    # "startTag":Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;
    .end local v13    # "tagTokens":[Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 73
    .restart local v4    # "isClosingTag":Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 75
    .restart local v5    # "isVoidTag":Z
    :cond_5
    const/4 v14, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v14, v7, -0x1

    goto :goto_4

    .line 89
    .restart local v13    # "tagTokens":[Ljava/lang/String;
    :cond_7
    if-nez v5, :cond_0

    .line 90
    new-instance v14, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;

    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 94
    .end local v4    # "isClosingTag":Z
    .end local v5    # "isVoidTag":Z
    .end local v6    # "ltPos":I
    .end local v13    # "tagTokens":[Ljava/lang/String;
    :sswitch_1
    const/16 v14, 0x3b

    add-int/lit8 v15, v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 95
    .local v8, "semiColonEnd":I
    const/16 v14, 0x20

    add-int/lit8 v15, v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 96
    .local v9, "spaceEnd":I
    const/4 v14, -0x1

    if-ne v8, v14, :cond_9

    move v3, v9

    .line 98
    .local v3, "entityEnd":I
    :goto_5
    const/4 v14, -0x1

    if-eq v3, v14, :cond_b

    .line 99
    add-int/lit8 v14, v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 100
    if-ne v3, v9, :cond_8

    .line 101
    const-string v14, " "

    invoke-virtual {v10, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 103
    :cond_8
    add-int/lit8 v7, v3, 0x1

    goto/16 :goto_0

    .line 96
    .end local v3    # "entityEnd":I
    :cond_9
    const/4 v14, -0x1

    if-ne v9, v14, :cond_a

    move v3, v8

    goto :goto_5

    :cond_a
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_5

    .line 105
    .restart local v3    # "entityEnd":I
    :cond_b
    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 106
    add-int/lit8 v7, v7, 0x1

    .line 108
    goto/16 :goto_0

    .line 116
    .end local v2    # "curr":C
    .end local v3    # "entityEnd":I
    .end local v8    # "semiColonEnd":I
    .end local v9    # "spaceEnd":I
    :cond_c
    :goto_6
    invoke-virtual {v12}, Ljava/util/Stack;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_d

    .line 117
    invoke-virtual {v12}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->applySpansForTag(Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;)V

    goto :goto_6

    .line 119
    :cond_d
    return-object v10

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method
