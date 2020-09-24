.class final Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SubstratumLauncher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;->invoke(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubstratumLauncher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubstratumLauncher.kt\nsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1\n+ 2 Extensions.kt\ncom/github/javiersantos/piracychecker/ExtensionsKt\n*L\n1#1,206:1\n21#2,5:207\n28#2,6:212\n35#2,8:218\n*E\n*S KotlinDebug\n*F\n+ 1 SubstratumLauncher.kt\nsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1\n*L\n130#1,5:207\n164#1,6:212\n172#1,8:218\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $this_piracyChecker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

.field final synthetic this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;


# direct methods
.method constructor <init>(Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;Lcom/github/javiersantos/piracychecker/PiracyChecker;)V
    .locals 0

    iput-object p1, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->this$0:Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1;

    iput-object p2, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->$this_piracyChecker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;

    invoke-virtual {p0, p1}, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->invoke(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;)V
    .locals 5
    .param p1, "$this$callback"    # Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallbacksDSL;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->$this_piracyChecker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .local v0, "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    const/4 v1, 0x0

    move v2, v1

    .line 207
    .local v2, "$i$f$allow":I
    move-object v3, v0

    .line 208
    .local v1, "$i$a$2$apply":I
    .local v3, "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    new-instance v4, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;

    invoke-direct {v4, p0}, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$allow$1;-><init>(Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;)V

    check-cast v4, Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;

    invoke-virtual {v3, v4}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->allowCallback(Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 211
    .end local v1    # "$i$a$2$apply":I
    .end local v3    # "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    nop

    .line 207
    nop

    .line 211
    .end local v0    # "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .end local v2    # "$i$f$allow":I
    nop

    .line 164
    iget-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->$this_piracyChecker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 212
    .restart local v0    # "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .local v2, "$i$f$doNotAllow":I
    move-object v3, v0

    .line 213
    .restart local v1    # "$i$a$2$apply":I
    .restart local v3    # "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    new-instance v4, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$doNotAllow$1;

    invoke-direct {v4, p0}, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$doNotAllow$1;-><init>(Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;)V

    check-cast v4, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    invoke-virtual {v3, v4}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback(Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 217
    .end local v1    # "$i$a$2$apply":I
    .end local v3    # "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    nop

    .line 212
    nop

    .line 217
    .end local v0    # "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .end local v2    # "$i$f$doNotAllow":I
    nop

    .line 172
    iget-object v0, p0, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;->$this_piracyChecker:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 218
    .restart local v0    # "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .local v2, "$i$f$onError":I
    move-object v3, v0

    .line 219
    .restart local v1    # "$i$a$2$apply":I
    .restart local v3    # "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    new-instance v4, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$onError$1;

    invoke-direct {v4, p0}, Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1$$special$$inlined$onError$1;-><init>(Lsubstratum/theme/template/SubstratumLauncher$startAntiPiracyCheck$1$1;)V

    check-cast v4, Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;

    invoke-virtual {v3, v4}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->onErrorCallback(Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 225
    .end local v1    # "$i$a$2$apply":I
    .end local v3    # "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    nop

    .line 218
    nop

    .line 225
    .end local v0    # "$receiver$iv":Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .end local v2    # "$i$f$onError":I
    nop

    .line 178
    return-void
.end method
