.class public final Lcom/android/settings/password/ConfirmLockPattern$a;
.super Ljava/lang/Enum;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ConfirmLockPattern$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    .line 70
    new-array v0, v0, [I

    sget v1, Lcom/android/settings/password/ConfirmLockPattern$a;->a:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settings/password/ConfirmLockPattern$a;->b:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settings/password/ConfirmLockPattern$a;->c:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ConfirmLockPattern$a;->d:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .line 70
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$a;->d:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
