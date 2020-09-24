.class public final enum Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;
.super Ljava/lang/Enum;
.source "ChooseComplexPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

.field public static final enum b:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

.field private static final synthetic g:[Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 123
    new-instance v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    const/4 v1, 0x0

    const-string v2, "Introduction"

    const v3, 0x7f120b23

    invoke-direct {v0, v2, v1, v3}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    .line 129
    new-instance v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    const/4 v2, 0x1

    const-string v3, "NeedToConfirm"

    const v4, 0x7f120f48

    invoke-direct {v0, v3, v2, v4}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    const/4 v0, 0x2

    .line 122
    new-array v0, v0, [Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    sget-object v3, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->g:[Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput p3, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->c:I

    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->d:I

    .line 143
    iput p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->e:I

    .line 144
    iput p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;
    .locals 1

    .line 122
    const-class v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    return-object p0
.end method

.method public static values()[Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;
    .locals 1

    .line 122
    sget-object v0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->g:[Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    invoke-virtual {v0}, [Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$a;

    return-object v0
.end method
