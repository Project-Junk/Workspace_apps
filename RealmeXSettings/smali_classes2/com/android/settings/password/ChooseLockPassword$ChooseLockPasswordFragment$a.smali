.class public final enum Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

.field public static final enum b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

.field public static final enum c:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

.field private static final synthetic o:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;


# instance fields
.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 350
    new-instance v14, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f120c92

    const v4, 0x7f120c88

    const v5, 0x7f120c87

    const v6, 0x7f120c92

    const v7, 0x7f120c90

    const v8, 0x7f120c8f

    const v9, 0x7f120c89

    const v10, 0x7f120c6f

    const v11, 0x7f120c91

    const v12, 0x7f120c6f

    const v13, 0x7f120e37

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v14, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    .line 363
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    const-string v16, "NeedToConfirm"

    const/16 v17, 0x1

    const v18, 0x7f120c9a

    const v19, 0x7f120c9a

    const v20, 0x7f120c9a

    const v21, 0x7f120ca4

    const v22, 0x7f120ca4

    const v23, 0x7f120ca4

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x7f120c94

    move-object v15, v0

    invoke-direct/range {v15 .. v28}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    .line 376
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    const-string v2, "ConfirmWrong"

    const/4 v3, 0x2

    const v4, 0x7f120c95

    const v5, 0x7f120c95

    const v6, 0x7f120c95

    const v7, 0x7f120c96

    const v8, 0x7f120c96

    const v9, 0x7f120c96

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const v14, 0x7f120c94

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->c:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    const/4 v0, 0x3

    .line 348
    new-array v0, v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->a:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->b:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->c:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->o:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIIIII)V"
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 394
    iput p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->d:I

    .line 395
    iput p4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->e:I

    .line 396
    iput p5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->f:I

    .line 398
    iput p6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->g:I

    .line 399
    iput p7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->h:I

    .line 400
    iput p8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->i:I

    .line 402
    iput p9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->j:I

    .line 403
    iput p10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->k:I

    .line 404
    iput p11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->l:I

    .line 405
    iput p12, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->m:I

    .line 406
    iput p13, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->n:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;
    .locals 1

    .line 348
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;
    .locals 1

    .line 348
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->o:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;

    return-object v0
.end method


# virtual methods
.method public final a(ZI)I
    .locals 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-ne p2, v1, :cond_0

    .line 432
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->e:I

    return p1

    :cond_0
    if-ne p2, v0, :cond_1

    .line 434
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->f:I

    return p1

    .line 436
    :cond_1
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->d:I

    return p1

    :cond_2
    if-ne p2, v1, :cond_3

    .line 440
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->h:I

    return p1

    :cond_3
    if-ne p2, v0, :cond_4

    .line 442
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->i:I

    return p1

    .line 444
    :cond_4
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$a;->g:I

    return p1
.end method
