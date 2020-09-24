.class public final Lcom/github/javiersantos/piracychecker/ExtensionsKt;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\ncom/github/javiersantos/piracychecker/ExtensionsKt\n*L\n1#1,46:1\n21#1,5:47\n28#1,6:52\n35#1,8:58\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u000e\u0008\u0006\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0086\u0008\u001a#\u0010\u0004\u001a\u00020\u0003*\u00020\u00012\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0002\u0008\u0008\u001a+\u0010\t\u001a\u00020\u0001*\u00020\u00012\u001c\u0008\u0006\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0004\u0012\u00020\u00030\nH\u0086\u0008\u001a#\u0010\r\u001a\u00020\u0001*\u00020\u00012\u0014\u0008\u0006\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00030\u0006H\u0086\u0008\u001a#\u0010\u000e\u001a\u00020\u0001*\u00020\u000f2\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0002\u0008\u0008\u001a#\u0010\u000e\u001a\u00020\u0001*\u00020\u00112\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u0006\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\u0012"
    }
    d2 = {
        "allow",
        "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
        "Lkotlin/Function0;",
        "",
        "callback",
        "callbacks",
        "Lkotlin/Function1;",
        "Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;",
        "Lkotlin/ExtensionFunctionType;",
        "doNotAllow",
        "Lkotlin/Function2;",
        "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
        "Lcom/github/javiersantos/piracychecker/enums/PirateApp;",
        "onError",
        "piracyChecker",
        "Landroid/content/Context;",
        "builder",
        "Landroidx/fragment/app/Fragment;",
        "library_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# direct methods
.method public static final allow(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lkotlin/jvm/functions/Function0;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 4
    .param p0, "$receiver"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "allow"    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$allow":I
    const-string v1, "receiver$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "allow"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v1, p0

    .local v1, "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    const/4 v2, 0x0

    .line 22
    .local v2, "$i$a$2$apply":I
    new-instance v3, Lcom/github/javiersantos/piracychecker/ExtensionsKt$allow$$inlined$apply$lambda$1;

    invoke-direct {v3, p1}, Lcom/github/javiersantos/piracychecker/ExtensionsKt$allow$$inlined$apply$lambda$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;

    invoke-virtual {v1, v3}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->allowCallback(Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 25
    .end local v1    # "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .end local v2    # "$i$a$2$apply":I
    nop

    .line 21
    nop

    .line 25
    return-object p0
.end method

.method public static synthetic allow$default(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 2
    .param p0, "$receiver"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "allow"    # Lkotlin/jvm/functions/Function0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 21
    sget-object p3, Lcom/github/javiersantos/piracychecker/ExtensionsKt$allow$1;->INSTANCE:Lcom/github/javiersantos/piracychecker/ExtensionsKt$allow$1;

    move-object p1, p3

    check-cast p1, Lkotlin/jvm/functions/Function0;

    .local p2, "$i$f$allow":I
    nop

    :cond_0
    const-string p3, "receiver$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "allow"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object p3, p0

    .local p3, "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    const/4 v0, 0x0

    .line 48
    .local v0, "$i$a$2$apply":I
    new-instance v1, Lcom/github/javiersantos/piracychecker/ExtensionsKt$allow$$inlined$apply$lambda$2;

    invoke-direct {v1, p1}, Lcom/github/javiersantos/piracychecker/ExtensionsKt$allow$$inlined$apply$lambda$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;

    invoke-virtual {p3, v1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->allowCallback(Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 51
    .end local v0    # "$i$a$2$apply":I
    .end local p3    # "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    nop

    .line 47
    nop

    .line 51
    return-object p0
.end method

.method public static final callback(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0, "$receiver"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "callbacks"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbacks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;

    invoke-direct {v0, p0}, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;-><init>(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public static final doNotAllow(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lkotlin/jvm/functions/Function2;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 4
    .param p0, "$receiver"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "doNotAllow"    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
            "-",
            "Lcom/github/javiersantos/piracychecker/enums/PirateApp;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$doNotAllow":I
    const-string v1, "receiver$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "doNotAllow"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v1, p0

    .local v1, "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    const/4 v2, 0x0

    .line 29
    .local v2, "$i$a$2$apply":I
    new-instance v3, Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$$inlined$apply$lambda$1;

    invoke-direct {v3, p1}, Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$$inlined$apply$lambda$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    invoke-virtual {v1, v3}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback(Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 33
    .end local v1    # "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .end local v2    # "$i$a$2$apply":I
    nop

    .line 28
    nop

    .line 33
    return-object p0
.end method

.method public static synthetic doNotAllow$default(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 2
    .param p0, "$receiver"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "doNotAllow"    # Lkotlin/jvm/functions/Function2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 27
    sget-object p3, Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$1;->INSTANCE:Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$1;

    move-object p1, p3

    check-cast p1, Lkotlin/jvm/functions/Function2;

    .local p2, "$i$f$doNotAllow":I
    nop

    :cond_0
    const-string p3, "receiver$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "doNotAllow"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    move-object p3, p0

    .local p3, "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    const/4 v0, 0x0

    .line 53
    .local v0, "$i$a$2$apply":I
    new-instance v1, Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$$inlined$apply$lambda$2;

    invoke-direct {v1, p1}, Lcom/github/javiersantos/piracychecker/ExtensionsKt$doNotAllow$$inlined$apply$lambda$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    invoke-virtual {p3, v1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback(Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 57
    .end local v0    # "$i$a$2$apply":I
    .end local p3    # "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    nop

    .line 52
    nop

    .line 57
    return-object p0
.end method

.method public static final onError(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lkotlin/jvm/functions/Function1;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 4
    .param p0, "$receiver"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "onError"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .local v0, "$i$f$onError":I
    const-string v1, "receiver$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onError"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    move-object v1, p0

    .local v1, "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    const/4 v2, 0x0

    .line 36
    .local v2, "$i$a$2$apply":I
    new-instance v3, Lcom/github/javiersantos/piracychecker/ExtensionsKt$onError$$inlined$apply$lambda$1;

    invoke-direct {v3, p1}, Lcom/github/javiersantos/piracychecker/ExtensionsKt$onError$$inlined$apply$lambda$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;

    invoke-virtual {v1, v3}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->onErrorCallback(Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 42
    .end local v1    # "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .end local v2    # "$i$a$2$apply":I
    nop

    .line 35
    nop

    .line 42
    return-object p0
.end method

.method public static synthetic onError$default(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 2
    .param p0, "$receiver"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "onError"    # Lkotlin/jvm/functions/Function1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    .line 35
    sget-object p3, Lcom/github/javiersantos/piracychecker/ExtensionsKt$onError$1;->INSTANCE:Lcom/github/javiersantos/piracychecker/ExtensionsKt$onError$1;

    move-object p1, p3

    check-cast p1, Lkotlin/jvm/functions/Function1;

    .local p2, "$i$f$onError":I
    nop

    :cond_0
    const-string p3, "receiver$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "onError"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    move-object p3, p0

    .local p3, "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    const/4 v0, 0x0

    .line 59
    .local v0, "$i$a$2$apply":I
    new-instance v1, Lcom/github/javiersantos/piracychecker/ExtensionsKt$onError$$inlined$apply$lambda$2;

    invoke-direct {v1, p1}, Lcom/github/javiersantos/piracychecker/ExtensionsKt$onError$$inlined$apply$lambda$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;

    invoke-virtual {p3, v1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->onErrorCallback(Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 65
    .end local v0    # "$i$a$2$apply":I
    .end local p3    # "$receiver":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    nop

    .line 58
    nop

    .line 65
    return-object p0
.end method

.method public static final piracyChecker(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p0, "$receiver"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "builder"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-direct {v0, p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;-><init>(Landroid/content/Context;)V

    .line 14
    .local v0, "checker":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-object v0
.end method

.method public static final piracyChecker(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 2
    .param p0, "$receiver"    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1, "builder"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/github/javiersantos/piracychecker/PiracyChecker;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/github/javiersantos/piracychecker/ExtensionsKt;->piracyChecker(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/github/javiersantos/piracychecker/ExtensionsKt;->piracyChecker(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    move-result-object v0

    :goto_0
    return-object v0
.end method
