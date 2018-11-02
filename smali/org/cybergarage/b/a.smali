.class public Lorg/cybergarage/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/cybergarage/xml/c;


# direct methods
.method public static final a()Lorg/cybergarage/xml/b;
    .locals 3

    new-instance v0, Lorg/cybergarage/xml/b;

    const-string v1, "s:Envelope"

    invoke-direct {v0, v1}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    const-string v1, "xmlns:s"

    const-string v2, "http://schemas.xmlsoap.org/soap/envelope/"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "s:encodingStyle"

    const-string v2, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-virtual {v0, v1, v2}, Lorg/cybergarage/xml/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/cybergarage/xml/b;

    const-string v2, "s:Body"

    invoke-direct {v1, v2}, Lorg/cybergarage/xml/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/cybergarage/xml/b;->c(Lorg/cybergarage/xml/b;)V

    return-object v0
.end method

.method public static final a(Lorg/cybergarage/xml/c;)V
    .locals 0

    sput-object p0, Lorg/cybergarage/b/a;->a:Lorg/cybergarage/xml/c;

    return-void
.end method

.method public static final b()Lorg/cybergarage/xml/c;
    .locals 1

    sget-object v0, Lorg/cybergarage/b/a;->a:Lorg/cybergarage/xml/c;

    return-object v0
.end method
