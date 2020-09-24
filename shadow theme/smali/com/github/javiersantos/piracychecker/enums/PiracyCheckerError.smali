.class public final enum Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
.super Ljava/lang/Enum;
.source "PiracyCheckerError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0013\u0008\u0086\u0001\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0015B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;",
        "",
        "text",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "NOT_LICENSED",
        "SIGNATURE_NOT_VALID",
        "INVALID_INSTALLER_ID",
        "USING_DEBUG_APP",
        "USING_APP_IN_EMULATOR",
        "PIRATE_APP_INSTALLED",
        "BLOCK_PIRATE_APP",
        "THIRD_PARTY_STORE_INSTALLED",
        "INVALID_PACKAGE_NAME",
        "NON_MATCHING_UID",
        "NOT_MARKET_MANAGED",
        "CHECK_IN_PROGRESS",
        "INVALID_PUBLIC_KEY",
        "MISSING_PERMISSION",
        "UNKNOWN",
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
.field private static final synthetic $VALUES:[Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum BLOCK_PIRATE_APP:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum CHECK_IN_PROGRESS:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final Companion:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError$Companion;

.field public static final enum INVALID_INSTALLER_ID:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum INVALID_PACKAGE_NAME:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum INVALID_PUBLIC_KEY:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum MISSING_PERMISSION:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum NON_MATCHING_UID:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum NOT_LICENSED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum NOT_MARKET_MANAGED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum PIRATE_APP_INSTALLED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum SIGNATURE_NOT_VALID:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum THIRD_PARTY_STORE_INSTALLED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum UNKNOWN:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum USING_APP_IN_EMULATOR:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

.field public static final enum USING_DEBUG_APP:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 4
    const/4 v2, 0x0

    const-string v3, "NOT_LICENSED"

    const-string v4, "This user is not using a licensed application from Google Play."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->NOT_LICENSED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 5
    const/4 v2, 0x1

    const-string v3, "SIGNATURE_NOT_VALID"

    const-string v4, "This app is using another signature. The original APK has been modified."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->SIGNATURE_NOT_VALID:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 6
    const/4 v2, 0x2

    const-string v3, "INVALID_INSTALLER_ID"

    const-string v4, "This app has been installed from a non-allowed source."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->INVALID_INSTALLER_ID:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 7
    const/4 v2, 0x3

    const-string v3, "USING_DEBUG_APP"

    const-string v4, "This is a debug build."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->USING_DEBUG_APP:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 8
    const/4 v2, 0x4

    const-string v3, "USING_APP_IN_EMULATOR"

    const-string v4, "This app is being used in an emulator."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->USING_APP_IN_EMULATOR:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 9
    const/4 v2, 0x5

    const-string v3, "PIRATE_APP_INSTALLED"

    const-string v4, "At least one pirate app has been detected on device."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->PIRATE_APP_INSTALLED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 11
    nop

    .line 10
    const/4 v2, 0x6

    const-string v3, "BLOCK_PIRATE_APP"

    const-string v4, "At least one pirate app has been detected and the app must be reinstalled when all unauthorized apps are uninstalled."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->BLOCK_PIRATE_APP:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 13
    const/4 v2, 0x7

    const-string v3, "THIRD_PARTY_STORE_INSTALLED"

    const-string v4, "At least one third-party store has been detected on device."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->THIRD_PARTY_STORE_INSTALLED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 16
    const/16 v2, 0x8

    const-string v3, "INVALID_PACKAGE_NAME"

    const-string v4, "Application package name is invalid."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->INVALID_PACKAGE_NAME:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 17
    const/16 v2, 0x9

    const-string v3, "NON_MATCHING_UID"

    const-string v4, "Application UID doesn\'t match."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->NON_MATCHING_UID:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 18
    const/16 v2, 0xa

    const-string v3, "NOT_MARKET_MANAGED"

    const-string v4, "Not market managed error."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->NOT_MARKET_MANAGED:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 19
    const/16 v2, 0xb

    const-string v3, "CHECK_IN_PROGRESS"

    const-string v4, "License check is in progress."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->CHECK_IN_PROGRESS:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 20
    const/16 v2, 0xc

    const-string v3, "INVALID_PUBLIC_KEY"

    const-string v4, "Application public key is invalid."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->INVALID_PUBLIC_KEY:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 21
    const/16 v2, 0xd

    const-string v3, "MISSING_PERMISSION"

    const-string v4, "Application misses the \'com.android.vending.CHECK_LICENSE\' permission."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->MISSING_PERMISSION:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    .line 22
    const/16 v2, 0xe

    const-string v3, "UNKNOWN"

    const-string v4, "Unknown error."

    invoke-direct {v1, v3, v2, v4}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->UNKNOWN:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->$VALUES:[Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    new-instance v0, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->Companion:Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError$Companion;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
    .locals 1

    const-class v0, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    return-object p0
.end method

.method public static values()[Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;
    .locals 1

    sget-object v0, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->$VALUES:[Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    invoke-virtual {v0}, [Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/github/javiersantos/piracychecker/enums/PiracyCheckerError;->text:Ljava/lang/String;

    return-object v0
.end method
