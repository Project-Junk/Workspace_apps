.class public final Lcom/github/javiersantos/piracychecker/utils/SaltUtils;
.super Ljava/lang/Object;
.source "SaltUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSaltUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaltUtils.kt\ncom/github/javiersantos/piracychecker/utils/SaltUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,74:1\n637#2,9:75\n37#3,2:84\n*E\n*S KotlinDebug\n*F\n+ 1 SaltUtils.kt\ncom/github/javiersantos/piracychecker/utils/SaltUtils\n*L\n44#1,9:75\n44#1,2:84\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0002J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/github/javiersantos/piracychecker/utils/SaltUtils;",
        "",
        "()V",
        "KEY_SALT",
        "",
        "mSalt",
        "",
        "saltString",
        "getSaltString",
        "()Ljava/lang/String;",
        "bytesFromString",
        "string",
        "generateSalt",
        "",
        "context",
        "Landroid/content/Context;",
        "getSalt",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/github/javiersantos/piracychecker/utils/SaltUtils;

.field private static final KEY_SALT:Ljava/lang/String; = "salty-salt"

.field private static mSalt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;

    invoke-direct {v0}, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;-><init>()V

    sput-object v0, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->INSTANCE:Lcom/github/javiersantos/piracychecker/utils/SaltUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bytesFromString(Ljava/lang/String;)[B
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .line 44
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, " "

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .local v0, "$receiver$iv":Ljava/util/List;
    move v1, v2

    .line 75
    .local v1, "$i$f$dropLastWhile":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    move v5, v2

    .line 77
    .local v3, "iterator$iv":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 78
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 44
    .local v5, "$i$a$1$dropLastWhile":I
    .local v6, "it":Ljava/lang/String;
    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    move v6, v2

    .end local v5    # "$i$a$1$dropLastWhile":I
    .end local v6    # "it":Ljava/lang/String;
    :goto_1
    if-nez v6, :cond_1

    .line 79
    move-object v5, v0

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    .line 77
    :cond_1
    goto :goto_0

    .line 83
    .end local v3    # "iterator$iv":Ljava/util/ListIterator;
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .end local v0    # "$receiver$iv":Ljava/util/List;
    .end local v1    # "$i$f$dropLastWhile":I
    :goto_2
    check-cast v5, Ljava/util/Collection;

    .line 44
    move-object v0, v5

    .local v0, "$receiver$iv":Ljava/util/Collection;
    move v1, v2

    .line 84
    .local v1, "$i$f$toTypedArray":I
    if-eqz v0, :cond_5

    move-object v3, v0

    .line 85
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    new-array v5, v2, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 44
    .end local v0    # "$receiver$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    .line 45
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [B

    .line 46
    .local v1, "data":[B
    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_3

    .line 47
    .local v2, "i":I
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    aput-byte v5, v1, v2

    .line 46
    nop

    .end local v2    # "i":I
    add-int/2addr v2, v4

    goto :goto_3

    .line 49
    :cond_3
    return-object v1

    .line 85
    .local v0, "$receiver$iv":Ljava/util/Collection;
    .local v1, "$i$f$toTypedArray":I
    .restart local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    new-instance v2, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v2, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_5
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final generateSalt(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    const/16 v0, 0x14

    new-array v0, v0, [B

    sput-object v0, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->mSalt:[B

    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 31
    .local v0, "randomGenerator":Ljava/util/Random;
    sget-object v1, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->mSalt:[B

    if-eqz v1, :cond_1

    .local v1, "it":[B
    const/4 v2, 0x0

    move v3, v2

    .line 32
    .local v3, "$i$a$1$let":I
    const/16 v4, 0x13

    :goto_0
    if-gt v2, v4, :cond_0

    .line 33
    .local v2, "i":I
    const/16 v5, 0x258

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, -0x12c

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 32
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "it":[B
    .end local v3    # "$i$a$1$let":I
    :cond_0
    nop

    .line 31
    :cond_1
    nop

    .line 36
    if-eqz p1, :cond_2

    .line 37
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->getSaltString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "saltStr":Ljava/lang/String;
    nop

    .line 40
    nop

    .line 38
    nop

    .line 39
    nop

    .line 38
    nop

    .line 39
    nop

    .line 38
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 39
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "salty-salt"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 40
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    return-void

    .line 36
    .end local v1    # "saltStr":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private final getSaltString()Ljava/lang/String;
    .locals 6

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->mSalt:[B

    if-eqz v1, :cond_2

    .local v1, "it":[B
    const/4 v2, 0x0

    move v3, v2

    .line 18
    .local v3, "$i$a$1$let":I
    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_1

    .line 19
    .local v2, "i":I
    if-lez v2, :cond_0

    .line 20
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_0
    aget-byte v5, v1, v2

    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    nop

    .end local v2    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    .end local v1    # "it":[B
    .end local v3    # "$i$a$1$let":I
    :cond_1
    nop

    .line 17
    :cond_2
    nop

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final getSalt(Landroid/content/Context;)[B
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "salty-salt"

    .line 53
    sget-object v1, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->mSalt:[B

    if-nez v1, :cond_2

    .line 54
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, p1

    .local v2, "it":Landroid/content/Context;
    const/4 v3, 0x0

    .line 55
    .local v3, "$i$a$1$let":I
    nop

    .line 56
    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 57
    .local v4, "prefs":Landroid/content/SharedPreferences;
    nop

    .line 58
    nop

    .line 57
    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    sget-object v5, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->INSTANCE:Lcom/github/javiersantos/piracychecker/utils/SaltUtils;

    .line 60
    nop

    .line 61
    nop

    .line 62
    nop

    .line 60
    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "prefs.getString(\n       \u2026                    null)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {v5, v0}, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->bytesFromString(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :cond_0
    nop

    .line 57
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    nop

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 66
    nop

    .line 54
    .end local v2    # "it":Landroid/content/Context;
    .end local v3    # "$i$a$1$let":I
    :cond_1
    sput-object v1, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->mSalt:[B

    .line 68
    sget-object v0, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->mSalt:[B

    if-nez v0, :cond_2

    .line 69
    invoke-direct {p0, p1}, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->generateSalt(Landroid/content/Context;)V

    .line 72
    :cond_2
    sget-object v0, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->mSalt:[B

    return-object v0
.end method
