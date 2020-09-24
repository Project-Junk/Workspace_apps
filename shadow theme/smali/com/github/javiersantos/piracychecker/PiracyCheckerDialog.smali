.class public final Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "PiracyCheckerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPiracyCheckerDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PiracyCheckerDialog.kt\ncom/github/javiersantos/piracychecker/PiracyCheckerDialog\n*L\n1#1,35:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "show",
        "",
        "context",
        "Landroid/content/Context;",
        "Companion",
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
.field public static final Companion:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog$Companion;

.field private static content:Ljava/lang/String;

.field private static pcDialog:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

.field private static title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->Companion:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContent$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 10
    sget-object v0, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->content:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getPcDialog$cp()Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 10
    sget-object v0, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->pcDialog:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    return-object v0
.end method

.method public static final synthetic access$getTitle$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 10
    sget-object v0, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setContent$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 10
    sput-object p0, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->content:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setPcDialog$cp(Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 10
    sput-object p0, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->pcDialog:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    return-void
.end method

.method public static final synthetic access$setTitle$cp(Ljava/lang/String;)V
    .locals 0
    .param p0, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 10
    sput-object p0, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 18
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->setCancelable(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->title:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->content:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v2, v3

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/github/javiersantos/piracychecker/utils/LibraryUtilsKt;->buildUnlicensedDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    check-cast v0, Landroid/app/Dialog;

    return-object v0
.end method

.method public final show(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_1

    .local v0, "it":Landroidx/appcompat/app/AppCompatActivity;
    const/4 v1, 0x0

    .line 13
    .local v1, "$i$a$1$let":I
    sget-object v2, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->pcDialog:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-string v4, "[LICENSE_DIALOG]"

    invoke-virtual {v2, v3, v4}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 12
    .end local v0    # "it":Landroidx/appcompat/app/AppCompatActivity;
    .end local v1    # "$i$a$1$let":I
    :cond_1
    nop

    .line 15
    return-void
.end method
