.class public final enum Lcom/github/javiersantos/piracychecker/enums/InstallerID;
.super Ljava/lang/Enum;
.source "InstallerID.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javiersantos/piracychecker/enums/InstallerID;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstallerID.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstallerID.kt\ncom/github/javiersantos/piracychecker/enums/InstallerID\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,25:1\n637#2,9:26\n37#3,2:35\n*E\n*S KotlinDebug\n*F\n+ 1 InstallerID.kt\ncom/github/javiersantos/piracychecker/enums/InstallerID\n*L\n19#1,9:26\n19#1,2:35\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/github/javiersantos/piracychecker/enums/InstallerID;",
        "",
        "text",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toIDs",
        "",
        "toString",
        "GOOGLE_PLAY",
        "AMAZON_APP_STORE",
        "GALAXY_APPS",
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
.field private static final synthetic $VALUES:[Lcom/github/javiersantos/piracychecker/enums/InstallerID;

.field public static final enum AMAZON_APP_STORE:Lcom/github/javiersantos/piracychecker/enums/InstallerID;

.field public static final enum GALAXY_APPS:Lcom/github/javiersantos/piracychecker/enums/InstallerID;

.field public static final enum GOOGLE_PLAY:Lcom/github/javiersantos/piracychecker/enums/InstallerID;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    .line 7
    const/4 v2, 0x0

    const-string v3, "GOOGLE_PLAY"

    const-string v4, "com.android.vending|com.google.android.feedback"

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/InstallerID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/InstallerID;->GOOGLE_PLAY:Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    .line 8
    const/4 v2, 0x1

    const-string v3, "AMAZON_APP_STORE"

    const-string v4, "com.amazon.venezia"

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/InstallerID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/InstallerID;->AMAZON_APP_STORE:Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    .line 9
    const/4 v2, 0x2

    const-string v3, "GALAXY_APPS"

    const-string v4, "com.sec.android.app.samsungapps"

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/InstallerID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/InstallerID;->GALAXY_APPS:Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    aput-object v1, v0, v2

    sput-object v0, Lcom/github/javiersantos/piracychecker/enums/InstallerID;->$VALUES:[Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "$enum_name_or_ordinal$1"    # I
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/github/javiersantos/piracychecker/enums/InstallerID;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/enums/InstallerID;
    .locals 1

    const-class v0, Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    return-object p0
.end method

.method public static values()[Lcom/github/javiersantos/piracychecker/enums/InstallerID;
    .locals 1

    sget-object v0, Lcom/github/javiersantos/piracychecker/enums/InstallerID;->$VALUES:[Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    invoke-virtual {v0}, [Lcom/github/javiersantos/piracychecker/enums/InstallerID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    return-object v0
.end method


# virtual methods
.method public final toIDs()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/enums/InstallerID;->text:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "|"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/enums/InstallerID;->text:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v3, "\\|"

    invoke-direct {v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .local v0, "$receiver$iv":Ljava/util/List;
    move v1, v2

    .line 26
    .local v1, "$i$f$dropLastWhile":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 27
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    move v4, v2

    .line 28
    .local v3, "iterator$iv":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 29
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 19
    .local v4, "$i$a$1$dropLastWhile":I
    .local v5, "it":Ljava/lang/String;
    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v5, v7

    goto :goto_1

    :cond_0
    move v5, v2

    .end local v4    # "$i$a$1$dropLastWhile":I
    .end local v5    # "it":Ljava/lang/String;
    :goto_1
    if-nez v5, :cond_1

    .line 30
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 28
    :cond_1
    goto :goto_0

    .line 34
    .end local v3    # "iterator$iv":Ljava/util/ListIterator;
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .end local v0    # "$receiver$iv":Ljava/util/List;
    .end local v1    # "$i$f$dropLastWhile":I
    :goto_2
    check-cast v4, Ljava/util/Collection;

    .line 19
    move-object v0, v4

    .local v0, "$receiver$iv":Ljava/util/Collection;
    move v1, v2

    .line 35
    .local v1, "$i$f$toTypedArray":I
    if-eqz v0, :cond_4

    move-object v3, v0

    .line 36
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    .end local v0    # "$receiver$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    .line 20
    .local v0, "split":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    .end local v0    # "split":[Ljava/lang/String;
    goto :goto_3

    .line 36
    .local v0, "$receiver$iv":Ljava/util/Collection;
    .restart local v1    # "$i$f$toTypedArray":I
    .restart local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_3
    new-instance v2, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v2, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 35
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_4
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 22
    .end local v0    # "$receiver$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/enums/InstallerID;->text:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 18
    :goto_3
    nop

    .line 23
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/enums/InstallerID;->text:Ljava/lang/String;

    return-object v0
.end method
