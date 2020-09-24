.class public final Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;
.super Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;
.source "PiracyChecker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javiersantos/piracychecker/PiracyChecker;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPiracyChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PiracyChecker.kt\ncom/github/javiersantos/piracychecker/PiracyChecker$start$1\n*L\n1#1,463:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u001a\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/github/javiersantos/piracychecker/PiracyChecker$start$1",
        "Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;",
        "allow",
        "",
        "doNotAllow",
        "error",
        "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
        "app",
        "Lcom/github/javiersantos/piracychecker/enums/PirateApp;",
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
.field final synthetic this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;


# direct methods
.method constructor <init>(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public allow()V
    .locals 0

    .line 301
    return-void
.end method

.method public doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V
    .locals 7
    .param p1, "error"    # Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "app"    # Lcom/github/javiersantos/piracychecker/enums/PirateApp;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getContext$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getContext$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    return-void

    .line 304
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    nop

    .line 309
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p2, :cond_4

    .line 310
    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v3}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getContext$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    sget v4, Lcom/github/javiersantos/piracychecker/R$string;->unauthorized_app_found:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, v2

    goto :goto_2

    .line 311
    :cond_4
    sget-object v3, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->BLOCK_PIRATE_APP:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    if-ne p1, v3, :cond_7

    .line 312
    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v3}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getContext$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_5

    sget v4, Lcom/github/javiersantos/piracychecker/R$string;->unauthorized_app_blocked:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v3, v2

    goto :goto_2

    .line 313
    :cond_7
    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-virtual {v3}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->getUnlicensedDialogDescription()Ljava/lang/String;

    move-result-object v3

    .line 308
    :goto_2
    nop

    .line 316
    .local v3, "dialogContent":Ljava/lang/String;
    iget-object v4, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v4}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getDisplay$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Lcom/github/javiersantos/piracychecker/enums/Display;

    move-result-object v4

    sget-object v5, Lcom/github/javiersantos/piracychecker/enums/Display;->DIALOG:Lcom/github/javiersantos/piracychecker/enums/Display;

    if-ne v4, v5, :cond_c

    .line 317
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$dismissDialog(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V

    .line 318
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    sget-object v4, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->Companion:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog$Companion;

    .line 319
    iget-object v5, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-virtual {v5}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->getUnlicensedDialogTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    move-object v5, v2

    :goto_3
    if-eqz v3, :cond_9

    move-object v2, v3

    .line 318
    :cond_9
    invoke-virtual {v4, v5, v2}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$setDialog$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;)V

    .line 321
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getContext$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 322
    .local v0, "$i$a$1$let":I
    .local v1, "it":Landroid/content/Context;
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getDialog$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v1}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->show(Landroid/content/Context;)V

    goto :goto_4

    :cond_a
    sget-object v2, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1$doNotAllow$1$1;->INSTANCE:Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1$doNotAllow$1$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 326
    :goto_4
    nop

    .line 321
    .end local v0    # "$i$a$1$let":I
    .end local v1    # "it":Landroid/content/Context;
    :cond_b
    goto :goto_6

    .line 329
    :cond_c
    nop

    .line 334
    nop

    .line 329
    nop

    .line 333
    nop

    .line 329
    nop

    .line 332
    nop

    .line 329
    nop

    .line 331
    nop

    .line 329
    nop

    .line 330
    nop

    .line 329
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getContext$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Landroid/content/Context;

    move-result-object v2

    const-class v4, Lcom/github/javiersantos/piracychecker/activities/LicenseActivity;

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 330
    const-string v2, "content"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 331
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getColorPrimary$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)I

    move-result v2

    const-string v4, "colorPrimary"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 332
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getColorPrimaryDark$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)I

    move-result v2

    const-string v4, "colorPrimaryDark"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 333
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getWithLightStatusBar$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Z

    move-result v2

    const-string v4, "withLightStatusBar"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 334
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getLayoutXML$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)I

    move-result v2

    const-string v4, "layoutXML"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 329
    nop

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getContext$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 336
    :cond_d
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-static {v2}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->access$getContext$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Landroid/content/Context;

    move-result-object v2

    instance-of v4, v2, Landroid/app/Activity;

    if-nez v4, :cond_e

    goto :goto_5

    :cond_e
    move-object v1, v2

    :goto_5
    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 337
    :cond_f
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;->this$0:Lcom/github/javiersantos/piracychecker/PiracyChecker;

    invoke-virtual {v1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->destroy()V

    .line 338
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_6
    nop

    .line 339
    return-void
.end method
