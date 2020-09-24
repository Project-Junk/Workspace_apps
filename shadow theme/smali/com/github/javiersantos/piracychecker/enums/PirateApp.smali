.class public final Lcom/github/javiersantos/piracychecker/enums/PirateApp;
.super Ljava/lang/Object;
.source "PirateApp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPirateApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PirateApp.kt\ncom/github/javiersantos/piracychecker/enums/PirateApp\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,32:1\n10667#2,2:33\n*E\n*S KotlinDebug\n*F\n+ 1 PirateApp.kt\ncom/github/javiersantos/piracychecker/enums/PirateApp\n*L\n25#1,2:33\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B!\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00030\t\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\nR(\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0018\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u00038FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\rR\u0011\u0010\u0015\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\rR(\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/github/javiersantos/piracychecker/enums/PirateApp;",
        "",
        "name",
        "",
        "appPackage",
        "type",
        "Lcom/github/javiersantos/piracychecker/enums/AppType;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/github/javiersantos/piracychecker/enums/AppType;)V",
        "pack",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;Lcom/github/javiersantos/piracychecker/enums/AppType;)V",
        "<set-?>",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "package",
        "package$annotations",
        "()V",
        "getPackage",
        "packageName",
        "getPackageName",
        "getType",
        "()Lcom/github/javiersantos/piracychecker/enums/AppType;",
        "setType",
        "(Lcom/github/javiersantos/piracychecker/enums/AppType;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pack:[Ljava/lang/String;

.field private type:Lcom/github/javiersantos/piracychecker/enums/AppType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/javiersantos/piracychecker/enums/PirateApp;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/javiersantos/piracychecker/enums/AppType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/javiersantos/piracychecker/enums/AppType;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "appPackage"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "type"    # Lcom/github/javiersantos/piracychecker/enums/AppType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appPackage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    nop

    .line 31
    const-string v0, ""

    invoke-static {p2, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextUtils.split(appPackage, \"\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/github/javiersantos/piracychecker/enums/PirateApp;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/github/javiersantos/piracychecker/enums/AppType;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/javiersantos/piracychecker/enums/AppType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 30
    sget-object p3, Lcom/github/javiersantos/piracychecker/enums/AppType;->OTHER:Lcom/github/javiersantos/piracychecker/enums/AppType;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/github/javiersantos/piracychecker/enums/PirateApp;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/github/javiersantos/piracychecker/enums/AppType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/github/javiersantos/piracychecker/enums/AppType;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "pack"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "type"    # Lcom/github/javiersantos/piracychecker/enums/AppType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pack"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->name:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->pack:[Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->type:Lcom/github/javiersantos/piracychecker/enums/AppType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;Lcom/github/javiersantos/piracychecker/enums/AppType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 5
    sget-object p3, Lcom/github/javiersantos/piracychecker/enums/AppType;->OTHER:Lcom/github/javiersantos/piracychecker/enums/AppType;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/github/javiersantos/piracychecker/enums/PirateApp;-><init>(Ljava/lang/String;[Ljava/lang/String;Lcom/github/javiersantos/piracychecker/enums/AppType;)V

    return-void
.end method

.method public static synthetic package$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in favor of packageName"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "packageName"
            imports = {}
        .end subannotation
    .end annotation

    return-void
.end method

.method private final setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->name:Ljava/lang/String;

    return-void
.end method

.method private final setType(Lcom/github/javiersantos/piracychecker/enums/AppType;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/github/javiersantos/piracychecker/enums/AppType;

    .line 8
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->type:Lcom/github/javiersantos/piracychecker/enums/AppType;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->pack:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .local v1, "$receiver$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    move v3, v2

    .line 33
    .local v3, "$i$f$forEach":I
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v1, v2

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .line 25
    .local v5, "$i$a$1$forEach":I
    .local v7, "it":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v5    # "$i$a$1$forEach":I
    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "it":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "$receiver$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    :cond_0
    nop

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sb.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getType()Lcom/github/javiersantos/piracychecker/enums/AppType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->type:Lcom/github/javiersantos/piracychecker/enums/AppType;

    return-object v0
.end method
