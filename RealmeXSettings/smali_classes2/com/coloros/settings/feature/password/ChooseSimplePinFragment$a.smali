.class public final enum Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;
.super Ljava/lang/Enum;
.source "ChooseSimplePinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

.field public static final enum b:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

.field private static final synthetic f:[Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 79
    new-instance v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    const/4 v1, 0x0

    const-string v2, "InputPassword"

    const v3, 0x7f120b23

    invoke-direct {v0, v2, v1, v3}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    .line 81
    new-instance v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    const/4 v2, 0x1

    const-string v3, "NewConfirmPassword"

    const v4, 0x7f120f48

    invoke-direct {v0, v3, v2, v4}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    const/4 v0, 0x2

    .line 78
    new-array v0, v0, [Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    sget-object v3, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->f:[Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->c:I

    const/4 p1, -0x1

    .line 88
    iput p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->d:I

    .line 89
    iput p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;
    .locals 1

    .line 78
    const-class v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    return-object p0
.end method

.method public static values()[Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;
    .locals 1

    .line 78
    sget-object v0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->f:[Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    invoke-virtual {v0}, [Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    return-object v0
.end method
