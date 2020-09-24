.class public final Lcom/github/javiersantos/piracychecker/PiracyChecker;
.super Ljava/lang/Object;
.source "PiracyChecker.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HardwareIds"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javiersantos/piracychecker/PiracyChecker$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPiracyChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PiracyChecker.kt\ncom/github/javiersantos/piracychecker/PiracyChecker\n*L\n1#1,463:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0016\u0008\u0007\u0018\u0000 ]2\u00020\u0001:\u0001]B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB%\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0008\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000bB\'\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010=\u001a\u00020\u00002\u0006\u0010>\u001a\u00020&J\u001f\u0010=\u001a\u00020\u00002\u0012\u0010?\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020&0@\"\u00020&\u00a2\u0006\u0002\u0010AJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010B\u001a\u00020\u00002\u0006\u00102\u001a\u0002032\u0006\u0010C\u001a\u00020\u0006J\u0016\u0010B\u001a\u00020\u00002\u0006\u0010D\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u0006J\u000e\u0010E\u001a\u00020\u00002\u0006\u0010E\u001a\u00020FJ\u0006\u0010G\u001a\u00020HJ\u0008\u0010I\u001a\u00020HH\u0002J\u0008\u0010J\u001a\u00020HH\u0002J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0018J\u0010\u0010K\u001a\u00020H2\u0006\u0010L\u001a\u00020\u0012H\u0002J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u0000J\u0006\u0010\u001c\u001a\u00020\u0000J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0012J\u0006\u0010\u001f\u001a\u00020\u0000J\u000e\u0010N\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u0006J\u001f\u0010P\u001a\u00020\u00002\u0012\u0010Q\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020)0@\"\u00020)\u00a2\u0006\u0002\u0010RJ\u000e\u0010!\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0006J\u0006\u0010\"\u001a\u00020\u0000J\u0006\u0010#\u001a\u00020\u0000J\u000e\u0010.\u001a\u00020\u00002\u0006\u0010S\u001a\u00020/J\u0016\u0010T\u001a\u00020\u00002\u0006\u00102\u001a\u0002032\u0006\u0010C\u001a\u00020\u0006J\u0016\u0010T\u001a\u00020\u00002\u0006\u0010D\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u0006J\u0012\u00104\u001a\u00020H2\u0008\u00102\u001a\u0004\u0018\u000103H\u0002J\u0012\u00104\u001a\u00020H2\u0008\u0010D\u001a\u0004\u0018\u00010\u0006H\u0002J\u0006\u0010U\u001a\u00020HJ\u0008\u0010V\u001a\u00020HH\u0002J\u0008\u0010W\u001a\u00020\u0012H\u0002J\u0008\u0010X\u001a\u00020\u0012H\u0002J\u0008\u0010Y\u001a\u00020\u0012H\u0002J\"\u0010Z\u001a\u00020\u00002\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00082\u0006\u0010<\u001a\u00020\u0012J\u0010\u0010[\u001a\u00020\u00002\u0008\u0008\u0001\u0010\\\u001a\u00020\u0008R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00088\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00088\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020)0(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010*\u001a\u00020\u00088\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u0004\u0018\u00010/X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00102\u001a\u0004\u0018\u000103X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00105\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u00107\"\u0004\u0008;\u00109R\u000e\u0010<\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006^"
    }
    d2 = {
        "Lcom/github/javiersantos/piracychecker/PiracyChecker;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "title",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "",
        "(Landroid/content/Context;I)V",
        "description",
        "(Landroid/content/Context;II)V",
        "unlicensedDialogTitle",
        "unlicensedDialogDescription",
        "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V",
        "allowCallback",
        "Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;",
        "blockUnauthorized",
        "",
        "colorPrimary",
        "colorPrimaryDark",
        "dialog",
        "Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;",
        "display",
        "Lcom/github/javiersantos/piracychecker/enums/Display;",
        "doNotAllowCallback",
        "Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;",
        "enableAPKCheck",
        "enableDebugCheck",
        "enableDeepEmulatorCheck",
        "enableEmulatorCheck",
        "enableFoldersCheck",
        "enableLVL",
        "enableSigningCertificate",
        "enableStoresCheck",
        "enableUnauthorizedAppsCheck",
        "extraApps",
        "Ljava/util/ArrayList;",
        "Lcom/github/javiersantos/piracychecker/enums/PirateApp;",
        "installerIDs",
        "",
        "Lcom/github/javiersantos/piracychecker/enums/InstallerID;",
        "layoutXML",
        "libraryLVLChecker",
        "Lcom/github/javiersantos/licensing/LibraryChecker;",
        "licenseBase64",
        "onErrorCallback",
        "Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;",
        "preferenceBlockUnauthorized",
        "preferenceSaveResult",
        "preferences",
        "Landroid/content/SharedPreferences;",
        "saveToSharedPreferences",
        "signature",
        "getUnlicensedDialogDescription",
        "()Ljava/lang/String;",
        "setUnlicensedDialogDescription",
        "(Ljava/lang/String;)V",
        "getUnlicensedDialogTitle",
        "setUnlicensedDialogTitle",
        "withLightStatusBar",
        "addAppToCheck",
        "app",
        "apps",
        "",
        "([Lcom/github/javiersantos/piracychecker/enums/PirateApp;)Lcom/github/javiersantos/piracychecker/PiracyChecker;",
        "blockIfUnauthorizedAppUninstalled",
        "preferenceName",
        "preferencesName",
        "callback",
        "Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;",
        "destroy",
        "",
        "destroyLVLChecker",
        "dismissDialog",
        "doExtraVerification",
        "possibleSuccess",
        "deepCheck",
        "enableGooglePlayLicensing",
        "licenseKeyBase64",
        "enableInstallerId",
        "installerID",
        "([Lcom/github/javiersantos/piracychecker/enums/InstallerID;)Lcom/github/javiersantos/piracychecker/PiracyChecker;",
        "errorCallback",
        "saveResultToSharedPreferences",
        "start",
        "verify",
        "verifyInstallerId",
        "verifySigningCertificate",
        "verifyUnauthorizedApp",
        "withActivityColors",
        "withActivityLayout",
        "layout",
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
.field public static final Companion:Lcom/github/javiersantos/piracychecker/PiracyChecker$Companion;

.field private static final LIBRARY_PREFERENCES_NAME:Ljava/lang/String; = "license_check"


# instance fields
.field private allowCallback:Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;

.field private blockUnauthorized:Z

.field private colorPrimary:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private colorPrimaryDark:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dialog:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

.field private display:Lcom/github/javiersantos/piracychecker/enums/Display;

.field private doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

.field private enableAPKCheck:Z

.field private enableDebugCheck:Z

.field private enableDeepEmulatorCheck:Z

.field private enableEmulatorCheck:Z

.field private enableFoldersCheck:Z

.field private enableLVL:Z

.field private enableSigningCertificate:Z

.field private enableStoresCheck:Z

.field private enableUnauthorizedAppsCheck:Z

.field private final extraApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/javiersantos/piracychecker/enums/PirateApp;",
            ">;"
        }
    .end annotation
.end field

.field private final installerIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javiersantos/piracychecker/enums/InstallerID;",
            ">;"
        }
    .end annotation
.end field

.field private layoutXML:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private libraryLVLChecker:Lcom/github/javiersantos/licensing/LibraryChecker;

.field private licenseBase64:Ljava/lang/String;

.field private onErrorCallback:Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;

.field private preferenceBlockUnauthorized:Ljava/lang/String;

.field private preferenceSaveResult:Ljava/lang/String;

.field private preferences:Landroid/content/SharedPreferences;

.field private saveToSharedPreferences:Z

.field private signature:Ljava/lang/String;

.field private unlicensedDialogDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private unlicensedDialogTitle:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private withLightStatusBar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/javiersantos/piracychecker/PiracyChecker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/javiersantos/piracychecker/PiracyChecker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->Companion:Lcom/github/javiersantos/piracychecker/PiracyChecker$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 91
    nop

    .line 93
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget v1, Lcom/github/javiersantos/piracychecker/R$string;->app_unlicensed:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, ""

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 94
    :goto_1
    if-eqz p1, :cond_2

    sget v0, Lcom/github/javiersantos/piracychecker/R$string;->app_unlicensed_description:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 92
    :goto_2
    invoke-direct {p0, p1, v1, v0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "title"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 101
    nop

    .line 103
    nop

    .line 104
    const-string v0, ""

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 102
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "title"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "description"    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 106
    nop

    .line 108
    nop

    .line 109
    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p2, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 110
    :goto_1
    if-eqz p3, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    move-object v1, v0

    .line 107
    :cond_4
    invoke-direct {p0, p1, v2, v1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 96
    nop

    .line 98
    const-string v0, ""

    if-eqz p2, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 99
    :goto_0
    if-eqz p1, :cond_1

    sget v2, Lcom/github/javiersantos/piracychecker/R$string;->app_unlicensed_description:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    move-object v0, v2

    .line 97
    :cond_2
    invoke-direct {p0, p1, v1, v0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "unlicensedDialogTitle"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "unlicensedDialogDescription"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->unlicensedDialogTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->unlicensedDialogDescription:Ljava/lang/String;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->layoutXML:I

    .line 84
    sget-object v0, Lcom/github/javiersantos/piracychecker/enums/Display;->DIALOG:Lcom/github/javiersantos/piracychecker/enums/Display;

    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->display:Lcom/github/javiersantos/piracychecker/enums/Display;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->installerIDs:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->extraApps:Ljava/util/ArrayList;

    .line 87
    sget v0, Lcom/github/javiersantos/piracychecker/R$color;->colorPrimary:I

    iput v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->colorPrimary:I

    .line 88
    sget v0, Lcom/github/javiersantos/piracychecker/R$color;->colorPrimaryDark:I

    iput v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->colorPrimaryDark:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p4, 0x2

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p5, :cond_2

    .line 42
    if-eqz p1, :cond_0

    sget p2, Lcom/github/javiersantos/piracychecker/R$string;->app_unlicensed:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    :cond_2
    :goto_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    .line 44
    if-eqz p1, :cond_3

    sget p3, Lcom/github/javiersantos/piracychecker/R$string;->app_unlicensed_description:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    move-object p3, v1

    goto :goto_2

    :cond_4
    move-object p3, v0

    :cond_5
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/github/javiersantos/piracychecker/PiracyChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$dismissDialog(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 39
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->dismissDialog()V

    return-void
.end method

.method public static final synthetic access$doExtraVerification(Lcom/github/javiersantos/piracychecker/PiracyChecker;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "possibleSuccess"    # Z

    .line 39
    invoke-direct {p0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doExtraVerification(Z)V

    return-void
.end method

.method public static final synthetic access$getColorPrimary$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)I
    .locals 1
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 39
    iget v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->colorPrimary:I

    return v0
.end method

.method public static final synthetic access$getColorPrimaryDark$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)I
    .locals 1
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 39
    iget v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->colorPrimaryDark:I

    return v0
.end method

.method public static final synthetic access$getContext$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getDialog$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;
    .locals 1
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->dialog:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    return-object v0
.end method

.method public static final synthetic access$getDisplay$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Lcom/github/javiersantos/piracychecker/enums/Display;
    .locals 1
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->display:Lcom/github/javiersantos/piracychecker/enums/Display;

    return-object v0
.end method

.method public static final synthetic access$getLayoutXML$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)I
    .locals 1
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 39
    iget v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->layoutXML:I

    return v0
.end method

.method public static final synthetic access$getOnErrorCallback$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;
    .locals 1
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->onErrorCallback:Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;

    return-object v0
.end method

.method public static final synthetic access$getWithLightStatusBar$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;)Z
    .locals 1
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 39
    iget-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->withLightStatusBar:Z

    return v0
.end method

.method public static final synthetic access$setColorPrimary$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;I)V
    .locals 0
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "<set-?>"    # I

    .line 39
    iput p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->colorPrimary:I

    return-void
.end method

.method public static final synthetic access$setColorPrimaryDark$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;I)V
    .locals 0
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "<set-?>"    # I

    .line 39
    iput p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->colorPrimaryDark:I

    return-void
.end method

.method public static final synthetic access$setContext$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;Landroid/content/Context;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "<set-?>"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 39
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setDialog$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "<set-?>"    # Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 39
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->dialog:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    return-void
.end method

.method public static final synthetic access$setDisplay$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lcom/github/javiersantos/piracychecker/enums/Display;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "<set-?>"    # Lcom/github/javiersantos/piracychecker/enums/Display;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 39
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->display:Lcom/github/javiersantos/piracychecker/enums/Display;

    return-void
.end method

.method public static final synthetic access$setLayoutXML$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;I)V
    .locals 0
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "<set-?>"    # I

    .line 39
    iput p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->layoutXML:I

    return-void
.end method

.method public static final synthetic access$setOnErrorCallback$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "<set-?>"    # Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 39
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->onErrorCallback:Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;

    return-void
.end method

.method public static final synthetic access$setWithLightStatusBar$p(Lcom/github/javiersantos/piracychecker/PiracyChecker;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .param p1, "<set-?>"    # Z

    .line 39
    iput-boolean p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->withLightStatusBar:Z

    return-void
.end method

.method private final destroyLVLChecker()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->libraryLVLChecker:Lcom/github/javiersantos/licensing/LibraryChecker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/javiersantos/licensing/LibraryChecker;->finishAllChecks()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->libraryLVLChecker:Lcom/github/javiersantos/licensing/LibraryChecker;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/javiersantos/licensing/LibraryChecker;->onDestroy()V

    .line 457
    :cond_1
    const/4 v0, 0x0

    check-cast v0, Lcom/github/javiersantos/licensing/LibraryChecker;

    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->libraryLVLChecker:Lcom/github/javiersantos/licensing/LibraryChecker;

    .line 458
    return-void
.end method

.method private final dismissDialog()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->dialog:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;->dismiss()V

    .line 451
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->dialog:Lcom/github/javiersantos/piracychecker/PiracyCheckerDialog;

    .line 452
    return-void
.end method

.method private final doExtraVerification(Z)V
    .locals 7
    .param p1, "possibleSuccess"    # Z

    .line 403
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 404
    iget-boolean v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableUnauthorizedAppsCheck:Z

    iget-boolean v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableStoresCheck:Z

    iget-boolean v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableFoldersCheck:Z

    iget-boolean v4, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableAPKCheck:Z

    .line 405
    iget-object v5, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->extraApps:Ljava/util/ArrayList;

    .line 403
    invoke-static/range {v0 .. v5}, Lcom/github/javiersantos/piracychecker/utils/LibraryUtilsKt;->getPirateApp(Landroid/content/Context;ZZZZLjava/util/ArrayList;)Lcom/github/javiersantos/piracychecker/enums/PirateApp;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v6

    .line 406
    .local v0, "app":Lcom/github/javiersantos/piracychecker/enums/PirateApp;
    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    .line 407
    iget-boolean v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableDebugCheck:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/github/javiersantos/piracychecker/utils/LibraryUtilsKt;->isDebug(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v1, :cond_2

    .line 408
    iget-boolean v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences:Z

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceSaveResult:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    if-eqz v1, :cond_11

    sget-object v2, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->USING_DEBUG_APP:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    invoke-interface {v1, v2, v6}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;->doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    goto/16 :goto_3

    .line 411
    :cond_2
    iget-boolean v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableEmulatorCheck:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableDeepEmulatorCheck:Z

    invoke-static {v3}, Lcom/github/javiersantos/piracychecker/utils/LibraryUtilsKt;->isInEmulator(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 412
    iget-boolean v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences:Z

    if-eqz v1, :cond_3

    .line 413
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceSaveResult:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 414
    :cond_3
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    if-eqz v1, :cond_11

    sget-object v2, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->USING_APP_IN_EMULATOR:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    invoke-interface {v1, v2, v6}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;->doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    goto/16 :goto_3

    .line 415
    :cond_4
    if-eqz v0, :cond_8

    .line 416
    iget-boolean v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences:Z

    if-eqz v3, :cond_5

    .line 417
    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_5

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceSaveResult:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 418
    :cond_5
    iget-boolean v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->blockUnauthorized:Z

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->getType()Lcom/github/javiersantos/piracychecker/enums/AppType;

    move-result-object v2

    sget-object v3, Lcom/github/javiersantos/piracychecker/enums/AppType;->PIRATE:Lcom/github/javiersantos/piracychecker/enums/AppType;

    if-ne v2, v3, :cond_6

    .line 419
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceBlockUnauthorized:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 420
    :cond_6
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    if-eqz v1, :cond_11

    .line 421
    invoke-virtual {v0}, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->getType()Lcom/github/javiersantos/piracychecker/enums/AppType;

    move-result-object v2

    sget-object v3, Lcom/github/javiersantos/piracychecker/enums/AppType;->STORE:Lcom/github/javiersantos/piracychecker/enums/AppType;

    if-ne v2, v3, :cond_7

    .line 422
    sget-object v2, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->THIRD_PARTY_STORE_INSTALLED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    goto :goto_1

    .line 424
    :cond_7
    sget-object v2, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->PIRATE_APP_INSTALLED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 421
    :goto_1
    nop

    .line 424
    nop

    .line 420
    invoke-interface {v1, v2, v0}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;->doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    goto/16 :goto_3

    .line 426
    :cond_8
    iget-boolean v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences:Z

    if-eqz v2, :cond_9

    .line 427
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceSaveResult:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 428
    :cond_9
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->allowCallback:Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;->allow()V

    .line 429
    :cond_a
    goto/16 :goto_3

    .line 431
    :cond_b
    if-eqz v0, :cond_f

    .line 432
    iget-boolean v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences:Z

    if-eqz v3, :cond_c

    .line 433
    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v4, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceSaveResult:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 434
    :cond_c
    iget-boolean v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->blockUnauthorized:Z

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->getType()Lcom/github/javiersantos/piracychecker/enums/AppType;

    move-result-object v2

    sget-object v3, Lcom/github/javiersantos/piracychecker/enums/AppType;->PIRATE:Lcom/github/javiersantos/piracychecker/enums/AppType;

    if-ne v2, v3, :cond_d

    .line 435
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_d

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceBlockUnauthorized:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 436
    :cond_d
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    if-eqz v1, :cond_11

    .line 437
    invoke-virtual {v0}, Lcom/github/javiersantos/piracychecker/enums/PirateApp;->getType()Lcom/github/javiersantos/piracychecker/enums/AppType;

    move-result-object v2

    sget-object v3, Lcom/github/javiersantos/piracychecker/enums/AppType;->STORE:Lcom/github/javiersantos/piracychecker/enums/AppType;

    if-ne v2, v3, :cond_e

    .line 438
    sget-object v2, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->THIRD_PARTY_STORE_INSTALLED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    goto :goto_2

    .line 440
    :cond_e
    sget-object v2, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->PIRATE_APP_INSTALLED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 437
    :goto_2
    nop

    .line 440
    nop

    .line 436
    invoke-interface {v1, v2, v0}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;->doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    goto :goto_3

    .line 442
    :cond_f
    iget-boolean v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences:Z

    if-eqz v1, :cond_10

    .line 443
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceSaveResult:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 444
    :cond_10
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    if-eqz v1, :cond_11

    sget-object v2, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->NOT_LICENSED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    invoke-interface {v1, v2, v6}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;->doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    .line 445
    :cond_11
    :goto_3
    nop

    .line 446
    nop

    .line 447
    return-void
.end method

.method private final saveToSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .line 211
    if-eqz p1, :cond_0

    .line 212
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    goto :goto_1

    .line 214
    :cond_0
    nop

    .line 215
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    instance-of v3, v2, Landroid/app/Activity;

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 218
    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    if-eqz v3, :cond_3

    const-string v1, "license_check"

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 220
    nop

    .line 221
    return-void
.end method

.method private final saveToSharedPreferences(Ljava/lang/String;)V
    .locals 4
    .param p1, "preferencesName"    # Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 225
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    goto :goto_1

    .line 227
    :cond_1
    nop

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    instance-of v3, v2, Landroid/app/Activity;

    if-nez v3, :cond_2

    move-object v2, v1

    :cond_2
    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Ljava/lang/Exception;
    nop

    .line 231
    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    if-eqz v3, :cond_4

    const-string v1, "license_check"

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    :cond_4
    iput-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    .line 232
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 233
    nop

    .line 234
    return-void
.end method

.method private final verify()V
    .locals 8

    .line 348
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->verifySigningCertificate()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->SIGNATURE_NOT_VALID:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    invoke-interface {v0, v2, v1}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;->doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    goto/16 :goto_1

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->verifyInstallerId()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->INVALID_INSTALLER_ID:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    invoke-interface {v0, v2, v1}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;->doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    goto :goto_1

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->verifyUnauthorizedApp()Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    if-eqz v0, :cond_6

    sget-object v2, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->BLOCK_PIRATE_APP:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    invoke-interface {v0, v2, v1}, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;->doNotAllow(Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;Lcom/github/javiersantos/piracychecker/enums/PirateApp;)V

    goto :goto_1

    .line 355
    :cond_2
    iget-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableLVL:Z

    if-eqz v0, :cond_5

    .line 356
    nop

    .line 357
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    nop

    .line 358
    .local v0, "deviceId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->destroyLVLChecker()V

    .line 359
    nop

    .line 360
    new-instance v2, Lcom/github/javiersantos/licensing/LibraryChecker;

    .line 361
    iget-object v3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    .line 362
    new-instance v4, Lcom/github/javiersantos/licensing/ServerManagedPolicy;

    .line 363
    nop

    .line 364
    new-instance v5, Lcom/github/javiersantos/licensing/AESObfuscator;

    .line 365
    sget-object v6, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->INSTANCE:Lcom/github/javiersantos/piracychecker/utils/SaltUtils;

    iget-object v7, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/github/javiersantos/piracychecker/utils/SaltUtils;->getSalt(Landroid/content/Context;)[B

    move-result-object v6

    iget-object v7, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 364
    :cond_4
    invoke-direct {v5, v6, v1, v0}, Lcom/github/javiersantos/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    check-cast v5, Lcom/github/javiersantos/licensing/Obfuscator;

    .line 362
    invoke-direct {v4, v3, v5}, Lcom/github/javiersantos/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/github/javiersantos/licensing/Obfuscator;)V

    check-cast v4, Lcom/github/javiersantos/licensing/Policy;

    .line 366
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->licenseBase64:Ljava/lang/String;

    .line 360
    invoke-direct {v2, v3, v4, v1}, Lcom/github/javiersantos/licensing/LibraryChecker;-><init>(Landroid/content/Context;Lcom/github/javiersantos/licensing/Policy;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->libraryLVLChecker:Lcom/github/javiersantos/licensing/LibraryChecker;

    .line 367
    iget-object v1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->libraryLVLChecker:Lcom/github/javiersantos/licensing/LibraryChecker;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/github/javiersantos/piracychecker/PiracyChecker$verify$1;

    invoke-direct {v2, p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker$verify$1;-><init>(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V

    check-cast v2, Lcom/github/javiersantos/licensing/LibraryCheckerCallback;

    invoke-virtual {v1, v2}, Lcom/github/javiersantos/licensing/LibraryChecker;->checkAccess(Lcom/github/javiersantos/licensing/LibraryCheckerCallback;)V

    goto :goto_1

    .line 382
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doExtraVerification(Z)V

    .line 383
    :cond_6
    :goto_1
    nop

    .line 384
    nop

    .line 385
    return-void
.end method

.method private final verifyInstallerId()Z
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->installerIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->installerIDs:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/github/javiersantos/piracychecker/utils/LibraryUtilsKt;->verifyInstallerId(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final verifySigningCertificate()Z
    .locals 3

    .line 388
    iget-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableSigningCertificate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->signature:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/github/javiersantos/piracychecker/utils/LibraryUtilsKt;->verifySigningCertificate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final verifyUnauthorizedApp()Z
    .locals 3

    .line 396
    nop

    .line 397
    iget-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->blockUnauthorized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceBlockUnauthorized:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public final addAppToCheck(Lcom/github/javiersantos/piracychecker/enums/PirateApp;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "app"    # Lcom/github/javiersantos/piracychecker/enums/PirateApp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->extraApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    return-object p0
.end method

.method public final varargs addAppToCheck([Lcom/github/javiersantos/piracychecker/enums/PirateApp;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 2
    .param p1, "apps"    # [Lcom/github/javiersantos/piracychecker/enums/PirateApp;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->extraApps:Ljava/util/ArrayList;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/github/javiersantos/piracychecker/enums/PirateApp;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    return-object p0
.end method

.method public final allowCallback(Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "allowCallback"    # Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "allowCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->allowCallback:Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;

    .line 259
    return-object p0
.end method

.method public final blockIfUnauthorizedAppUninstalled(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "preferenceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->blockUnauthorized:Z

    .line 139
    iput-object p2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceBlockUnauthorized:Ljava/lang/String;

    .line 140
    invoke-direct {p0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 141
    return-object p0
.end method

.method public final blockIfUnauthorizedAppUninstalled(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "preferencesName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "preferenceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "preferencesName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->blockUnauthorized:Z

    .line 149
    iput-object p2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceBlockUnauthorized:Ljava/lang/String;

    .line 150
    invoke-direct {p0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences(Ljava/lang/String;)V

    .line 151
    return-object p0
.end method

.method public final callback(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "callback"    # Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    new-instance v0, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$1;

    invoke-direct {v0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$1;-><init>(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;)V

    check-cast v0, Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;

    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->allowCallback:Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;

    .line 278
    new-instance v0, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$2;

    invoke-direct {v0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$2;-><init>(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;)V

    check-cast v0, Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    .line 283
    new-instance v0, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$3;

    invoke-direct {v0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker$callback$3;-><init>(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;)V

    check-cast v0, Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;

    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->onErrorCallback:Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;

    .line 289
    return-object p0
.end method

.method public final destroy()V
    .locals 1

    .line 293
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->dismissDialog()V

    .line 294
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->destroyLVLChecker()V

    .line 295
    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->context:Landroid/content/Context;

    .line 296
    return-void
.end method

.method public final display(Lcom/github/javiersantos/piracychecker/enums/Display;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "display"    # Lcom/github/javiersantos/piracychecker/enums/Display;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->display:Lcom/github/javiersantos/piracychecker/enums/Display;

    .line 238
    return-object p0
.end method

.method public final doNotAllowCallback(Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "doNotAllowCallback"    # Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "doNotAllowCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    .line 264
    return-object p0
.end method

.method public final enableAPKCheck()Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableAPKCheck:Z

    .line 166
    return-object p0
.end method

.method public final enableDebugCheck()Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableDebugCheck:Z

    .line 161
    return-object p0
.end method

.method public final enableEmulatorCheck(Z)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "deepCheck"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableEmulatorCheck:Z

    .line 171
    iput-boolean p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableDeepEmulatorCheck:Z

    .line 172
    return-object p0
.end method

.method public final enableFoldersCheck()Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableFoldersCheck:Z

    .line 177
    return-object p0
.end method

.method public final enableGooglePlayLicensing(Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "licenseKeyBase64"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "licenseKeyBase64"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableLVL:Z

    .line 114
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->licenseBase64:Ljava/lang/String;

    .line 115
    return-object p0
.end method

.method public final varargs enableInstallerId([Lcom/github/javiersantos/piracychecker/enums/InstallerID;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 3
    .param p1, "installerID"    # [Lcom/github/javiersantos/piracychecker/enums/InstallerID;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "installerID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->installerIDs:Ljava/util/List;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/github/javiersantos/piracychecker/enums/InstallerID;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "Arrays.asList(*installerID)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    return-object p0
.end method

.method public final enableSigningCertificate(Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "signature"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableSigningCertificate:Z

    .line 120
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->signature:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public final enableStoresCheck()Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableStoresCheck:Z

    .line 156
    return-object p0
.end method

.method public final enableUnauthorizedAppsCheck()Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->enableUnauthorizedAppsCheck:Z

    .line 131
    return-object p0
.end method

.method public final getUnlicensedDialogDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->unlicensedDialogDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnlicensedDialogTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->unlicensedDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final onErrorCallback(Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "errorCallback"    # Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "errorCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->onErrorCallback:Lcom/github/javiersantos/piracychecker/callbacks/OnErrorCallback;

    .line 269
    return-object p0
.end method

.method public final saveResultToSharedPreferences(Landroid/content/SharedPreferences;Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "preferenceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "preferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences:Z

    .line 195
    iput-object p2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceSaveResult:Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 197
    return-object p0
.end method

.method public final saveResultToSharedPreferences(Ljava/lang/String;Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 1
    .param p1, "preferencesName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "preferenceName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "preferencesName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences:Z

    .line 205
    iput-object p2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->preferenceSaveResult:Ljava/lang/String;

    .line 206
    invoke-direct {p0, p1}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->saveToSharedPreferences(Ljava/lang/String;)V

    .line 207
    return-object p0
.end method

.method public final setUnlicensedDialogDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 43
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->unlicensedDialogDescription:Ljava/lang/String;

    return-void
.end method

.method public final setUnlicensedDialogTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 41
    iput-object p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->unlicensedDialogTitle:Ljava/lang/String;

    return-void
.end method

.method public final start()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->allowCallback:Lcom/github/javiersantos/piracychecker/callbacks/AllowCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->doNotAllowCallback:Lcom/github/javiersantos/piracychecker/callbacks/DoNotAllowCallback;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;

    invoke-direct {v0, p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker$start$1;-><init>(Lcom/github/javiersantos/piracychecker/PiracyChecker;)V

    check-cast v0, Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;

    invoke-virtual {p0, v0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->callback(Lcom/github/javiersantos/piracychecker/callbacks/PiracyCheckerCallback;)Lcom/github/javiersantos/piracychecker/PiracyChecker;

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/github/javiersantos/piracychecker/PiracyChecker;->verify()V

    .line 343
    return-void
.end method

.method public final withActivityColors(IIZ)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 0
    .param p1, "colorPrimary"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p2, "colorPrimaryDark"    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p3, "withLightStatusBar"    # Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 246
    iput p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->colorPrimary:I

    .line 247
    iput p2, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->colorPrimaryDark:I

    .line 248
    iput-boolean p3, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->withLightStatusBar:Z

    .line 249
    return-object p0
.end method

.method public final withActivityLayout(I)Lcom/github/javiersantos/piracychecker/PiracyChecker;
    .locals 0
    .param p1, "layout"    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 253
    iput p1, p0, Lcom/github/javiersantos/piracychecker/PiracyChecker;->layoutXML:I

    .line 254
    return-object p0
.end method
