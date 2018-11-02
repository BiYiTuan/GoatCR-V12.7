.class public Lcom/gemini/play/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static nf:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gemini/play/StringUtil;->nf:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static I2S(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 117
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    .line 119
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private static L2S(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static N2S(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1
    .param p0, "num"    # Ljava/lang/Number;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    .line 18
    sget-object v0, Lcom/gemini/play/StringUtil;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static S2B(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/gemini/play/StringUtil;->parseComStr2SmpStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    :cond_0
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static S2D(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 94
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/Double;

    sget-object v2, Lcom/gemini/play/StringUtil;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v2, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "pe":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, ""

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static S2I(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p0}, Lcom/gemini/play/StringUtil;->parseComStr2SmpStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/StringUtil;->I2S(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static S2L(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/gemini/play/StringUtil;->parseComStr2SmpStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/StringUtil;->L2S(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static doubleFormat(Ljava/lang/Double;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Double;

    .prologue
    .line 106
    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/Double;

    .end local p0    # "value":Ljava/lang/Double;
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    .line 107
    .restart local p0    # "value":Ljava/lang/Double;
    :cond_0
    sget-object v0, Lcom/gemini/play/StringUtil;->nf:Ljava/text/NumberFormat;

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "k":I
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p1, v2

    .line 174
    .local v1, "obj":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public static getAfterColon(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    const/4 v3, 0x0

    .line 191
    :goto_0
    return-object v3

    .line 186
    :cond_0
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, "index1":I
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "str1":Ljava/lang/String;
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 189
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "index2":I
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "str2":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/Double;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Double;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/StringUtil;->isEmpty(Ljava/lang/Double;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/Double;Z)Z
    .locals 6
    .param p0, "obj"    # Ljava/lang/Double;
    .param p1, "flag"    # Z

    .prologue
    const/4 v0, 0x1

    .line 70
    if-nez p0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    const-wide/16 v2, 0x0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Integer;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/StringUtil;->isEmpty(Ljava/lang/Integer;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/Integer;Z)Z
    .locals 2
    .param p0, "obj"    # Ljava/lang/Integer;
    .param p1, "flag"    # Z

    .prologue
    const/4 v0, 0x1

    .line 55
    if-nez p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/Long;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Long;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gemini/play/StringUtil;->isEmpty(Ljava/lang/Long;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/lang/Long;Z)Z
    .locals 6
    .param p0, "obj"    # Ljava/lang/Long;
    .param p1, "flag"    # Z

    .prologue
    const/4 v0, 0x1

    .line 40
    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    const-wide/16 v2, 0x0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 85
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "obj"    # Ljava/lang/String;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/Date;)Z
    .locals 1
    .param p0, "obj"    # Ljava/util/Date;

    .prologue
    .line 30
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/util/List;)Z
    .locals 1
    .param p0, "obj"    # Ljava/util/List;

    .prologue
    .line 80
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStringEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStringNotEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 161
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseComStr2SmpStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 148
    if-nez p0, :cond_1

    .line 149
    const/4 v1, 0x0

    .line 156
    :cond_0
    return-object v1

    .line 151
    :cond_1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v0, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v0, "st":Ljava/util/StringTokenizer;
    const-string v1, ""

    .line 153
    .local v1, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseString2Double(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p0}, Lcom/gemini/play/StringUtil;->parseComStr2SmpStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gemini/play/StringUtil;->S2D(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
