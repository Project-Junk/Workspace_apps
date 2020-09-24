.class public final Lcom/android/a/a/a/g;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field protected static final a:Ljava/nio/charset/Charset;

.field protected static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 70
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/a/a/a/g;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 71
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/a/a/a/g;->b:Ljava/nio/charset/Charset;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/a/a/a/g;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/a/a/a/c;Lcom/android/a/a/a/c;)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    if-eqz v0, :cond_0

    .line 544
    iget-object p0, p0, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    invoke-virtual {p0}, Lcom/android/a/a/a/e;->c()Lcom/android/a/a/a/e;

    move-result-object p0

    iput-object p0, p1, Lcom/android/a/a/a/c;->a:Lcom/android/a/a/a/e;

    :cond_0
    return-void
.end method
