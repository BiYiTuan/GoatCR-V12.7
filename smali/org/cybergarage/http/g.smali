.class public Lorg/cybergarage/http/g;
.super Lorg/cybergarage/http/d;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/http/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/g;->b:I

    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/g;->a(Ljava/lang/String;)V

    const-string v0, "text/html; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/g;->h(Ljava/lang/String;)V

    invoke-static {}, Lorg/cybergarage/http/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/g;->k(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/cybergarage/http/g;->g(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/http/g;)V
    .locals 1

    invoke-direct {p0}, Lorg/cybergarage/http/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/g;->b:I

    invoke-virtual {p0, p1}, Lorg/cybergarage/http/g;->a(Lorg/cybergarage/http/d;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/cybergarage/http/d;-><init>(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/http/g;->b:I

    return-void
.end method


# virtual methods
.method public A()I
    .locals 2

    iget v0, p0, Lorg/cybergarage/http/g;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cybergarage/http/g;->b:I

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lorg/cybergarage/http/k;

    invoke-virtual {p0}, Lorg/cybergarage/http/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cybergarage/http/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/cybergarage/http/k;->a()I

    move-result v0

    goto :goto_0
.end method

.method public B()Z
    .locals 1

    invoke-virtual {p0}, Lorg/cybergarage/http/g;->A()I

    move-result v0

    invoke-static {v0}, Lorg/cybergarage/http/k;->c(I)Z

    move-result v0

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cybergarage/http/g;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cybergarage/http/g;->b:I

    invoke-static {v1}, Lorg/cybergarage/http/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/http/g;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/http/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/cybergarage/http/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lorg/cybergarage/http/g;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/cybergarage/http/g;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/http/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/cybergarage/http/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
