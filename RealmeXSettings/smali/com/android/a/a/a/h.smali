.class public final Lcom/android/a/a/a/h;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferNanoException.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static a()Lcom/android/a/a/a/h;
    .locals 2

    .line 49
    new-instance v0, Lcom/android/a/a/a/h;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/android/a/a/a/h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static b()Lcom/android/a/a/a/h;
    .locals 2

    .line 57
    new-instance v0, Lcom/android/a/a/a/h;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/android/a/a/a/h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static c()Lcom/android/a/a/a/h;
    .locals 2

    .line 63
    new-instance v0, Lcom/android/a/a/a/h;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/android/a/a/a/h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static d()Lcom/android/a/a/a/h;
    .locals 2

    .line 68
    new-instance v0, Lcom/android/a/a/a/h;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/android/a/a/a/h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static e()Lcom/android/a/a/a/h;
    .locals 2

    .line 73
    new-instance v0, Lcom/android/a/a/a/h;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/android/a/a/a/h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static f()Lcom/android/a/a/a/h;
    .locals 2

    .line 78
    new-instance v0, Lcom/android/a/a/a/h;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/android/a/a/a/h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static g()Lcom/android/a/a/a/h;
    .locals 2

    .line 83
    new-instance v0, Lcom/android/a/a/a/h;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/android/a/a/a/h;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
