.class final enum Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

.field public static final enum b:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

.field public static final enum c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

.field private static final synthetic f:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;


# instance fields
.field final d:I

.field final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 384
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    const v1, 0x7f120ce2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Retry"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    .line 385
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    const-string v4, "RetryDisabled"

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->b:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    .line 386
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    const/4 v1, 0x2

    const-string v4, "Gone"

    const/4 v5, -0x1

    invoke-direct {v0, v4, v1, v5, v3}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    const/4 v0, 0x3

    .line 383
    new-array v0, v0, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    sget-object v4, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->a:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    aput-object v4, v0, v3

    sget-object v3, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->b:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    aput-object v3, v0, v2

    sget-object v2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->c:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->f:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 394
    iput p3, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->d:I

    .line 395
    iput-boolean p4, p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;
    .locals 1

    .line 383
    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;
    .locals 1

    .line 383
    sget-object v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->f:[Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$a;

    return-object v0
.end method
