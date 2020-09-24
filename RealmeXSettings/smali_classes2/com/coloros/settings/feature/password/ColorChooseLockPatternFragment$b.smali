.class final enum Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;
.super Ljava/lang/Enum;
.source "ColorChooseLockPatternFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

.field public static final enum b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

.field public static final enum c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

.field public static final enum d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

.field public static final enum e:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

.field private static final synthetic h:[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;


# instance fields
.field final f:I

.field final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 258
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const v1, 0x7f120cd2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Continue"

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    .line 259
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const-string v4, "ContinueDisabled"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    .line 260
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const v1, 0x7f120cd1

    const/4 v4, 0x2

    const-string v5, "Confirm"

    invoke-direct {v0, v5, v4, v1, v3}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    .line 261
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const/4 v5, 0x3

    const-string v6, "ConfirmDisabled"

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    .line 262
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const/4 v1, 0x4

    const-string v6, "Ok"

    const v7, 0x104000a

    invoke-direct {v0, v6, v1, v7, v3}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->e:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const/4 v0, 0x5

    .line 257
    new-array v0, v0, [Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    sget-object v6, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    aput-object v6, v0, v2

    sget-object v2, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    aput-object v2, v0, v3

    sget-object v2, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    aput-object v2, v0, v4

    sget-object v2, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    aput-object v2, v0, v5

    sget-object v2, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->e:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->h:[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 268
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 269
    iput p3, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->f:I

    .line 270
    iput-boolean p4, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->g:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;
    .locals 1

    .line 257
    const-class v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    return-object p0
.end method

.method public static values()[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;
    .locals 1

    .line 257
    sget-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->h:[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    invoke-virtual {v0}, [Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    return-object v0
.end method
