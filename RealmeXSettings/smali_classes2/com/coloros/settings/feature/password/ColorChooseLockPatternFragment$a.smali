.class final enum Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;
.super Ljava/lang/Enum;
.source "ColorChooseLockPatternFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

.field public static final enum b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

.field public static final enum c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

.field public static final enum d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

.field public static final enum e:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

.field private static final synthetic h:[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;


# instance fields
.field final f:I

.field final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 234
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    const v1, 0x7f120491

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Cancel"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    .line 235
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    const-string v4, "CancelDisabled"

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    .line 236
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    const v1, 0x7f120ce2

    const/4 v4, 0x2

    const-string v5, "Retry"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    .line 237
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    const/4 v5, 0x3

    const-string v6, "RetryDisabled"

    invoke-direct {v0, v6, v5, v1, v3}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    .line 238
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    const/4 v1, 0x4

    const-string v6, "Gone"

    const/4 v7, -0x1

    invoke-direct {v0, v6, v1, v7, v3}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->e:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    const/4 v0, 0x5

    .line 233
    new-array v0, v0, [Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    sget-object v6, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    aput-object v6, v0, v3

    sget-object v3, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    aput-object v3, v0, v2

    sget-object v2, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    aput-object v2, v0, v4

    sget-object v2, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    aput-object v2, v0, v5

    sget-object v2, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->e:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->h:[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 246
    iput p3, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->f:I

    .line 247
    iput-boolean p4, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->g:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;
    .locals 1

    .line 233
    const-class v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    return-object p0
.end method

.method public static values()[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;
    .locals 1

    .line 233
    sget-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->h:[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    invoke-virtual {v0}, [Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    return-object v0
.end method
