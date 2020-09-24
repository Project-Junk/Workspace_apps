.class public final enum Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;
.super Ljava/lang/Enum;
.source "ColorChooseLockPatternFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

.field public static final enum b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

.field public static final enum c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

.field public static final enum d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

.field private static final synthetic k:[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;


# instance fields
.field final e:I

.field final f:I

.field final g:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

.field final h:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

.field final i:I

.field final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 282
    new-instance v7, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    sget-object v5, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->e:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    sget-object v6, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f120865

    const v4, 0x7f120fb7

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;-><init>(Ljava/lang/String;IIILcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;)V

    sput-object v7, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    .line 285
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    sget-object v13, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->e:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    sget-object v14, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const-string v9, "ChoiceTooShort"

    const/4 v10, 0x1

    const v11, 0x7f120865

    const v12, 0x7f120cdd

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;-><init>(Ljava/lang/String;IIILcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    .line 289
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    sget-object v6, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->e:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    sget-object v7, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const-string v2, "PatternRepeated"

    const/4 v3, 0x2

    const v4, 0x7f120865

    const v5, 0x7f120c4f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;-><init>(Ljava/lang/String;IIILcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    .line 291
    new-instance v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    sget-object v13, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;->e:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    sget-object v14, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const-string v9, "NeedToConfirm"

    const/4 v10, 0x3

    const v11, 0x7f120cd3

    const v12, 0x7f120cd3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;-><init>(Ljava/lang/String;IIILcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;)V

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    const/4 v0, 0x4

    .line 280
    new-array v0, v0, [Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->a:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->b:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->c:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->d:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->k:[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;",
            "Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;",
            "IZ)V"
        }
    .end annotation

    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 303
    iput p3, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->e:I

    .line 304
    iput p4, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->f:I

    .line 305
    iput-object p5, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->g:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$a;

    .line 306
    iput-object p6, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->h:Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$b;

    const/4 p1, -0x1

    .line 307
    iput p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->i:I

    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->j:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;
    .locals 1

    .line 280
    const-class v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    return-object p0
.end method

.method public static values()[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;
    .locals 1

    .line 280
    sget-object v0, Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->k:[Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    invoke-virtual {v0}, [Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/settings/feature/password/ColorChooseLockPatternFragment$c;

    return-object v0
.end method
