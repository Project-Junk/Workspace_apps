.class public Lcom/google/android/a/a/c;
.super Ljava/lang/Object;
.source "CharacterSets.java"


# static fields
.field static final synthetic a:Z

.field private static final b:[I

.field private static final c:[Ljava/lang/String;

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 23
    const-class v0, Lcom/google/android/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/a/a/c;->a:Z

    const/16 v0, 0x10

    .line 56
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/a/a/c;->b:[I

    const-string v1, "*"

    const-string v2, "us-ascii"

    const-string v3, "iso-8859-1"

    const-string v4, "iso-8859-2"

    const-string v5, "iso-8859-3"

    const-string v6, "iso-8859-4"

    const-string v7, "iso-8859-5"

    const-string v8, "iso-8859-6"

    const-string v9, "iso-8859-7"

    const-string v10, "iso-8859-8"

    const-string v11, "iso-8859-9"

    const-string v12, "shift_JIS"

    const-string v13, "utf-8"

    const-string v14, "big5"

    const-string v15, "iso-10646-ucs-2"

    const-string v16, "utf-16"

    .line 100
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/c;->c:[Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/a/a/c;->d:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/a/a/c;->e:Ljava/util/HashMap;

    .line 126
    sget-boolean v0, Lcom/google/android/a/a/c;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/a/a/c;->b:[I

    array-length v0, v0

    sget-object v1, Lcom/google/android/a/a/c;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 127
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/a/a/c;->b:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_1
    if-gt v1, v0, :cond_2

    .line 129
    sget-object v2, Lcom/google/android/a/a/c;->d:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/a/a/c;->b:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/android/a/a/c;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v2, Lcom/google/android/a/a/c;->e:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/a/a/c;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/google/android/a/a/c;->b:[I

    aget v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0x11
        0x6a
        0x7ea
        0x3e8
        0x3f7
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/google/android/a/a/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 168
    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 146
    sget-object v0, Lcom/google/android/a/a/c;->d:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    .line 148
    :cond_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw p0
.end method
