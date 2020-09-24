.class public final enum Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;
.super Ljava/lang/Enum;
.source "ConfirmSimplePinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

.field public static final enum b:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

.field public static final enum c:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

.field private static final synthetic d:[Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 84
    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    const/4 v1, 0x0

    const-string v2, "InputPassword"

    invoke-direct {v0, v2, v1}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    const/4 v2, 0x1

    const-string v3, "InputPasswordWrong"

    invoke-direct {v0, v3, v2}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    const/4 v3, 0x2

    const-string v4, "InputPasswordWrongFive"

    invoke-direct {v0, v4, v3}, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->c:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    const/4 v0, 0x3

    .line 83
    new-array v0, v0, [Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    sget-object v4, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    aput-object v4, v0, v1

    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->c:Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->d:[Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;
    .locals 1

    .line 83
    const-class v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    return-object p0
.end method

.method public static values()[Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;
    .locals 1

    .line 83
    sget-object v0, Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->d:[Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    invoke-virtual {v0}, [Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/settings/feature/password/ConfirmSimplePinFragment$a;

    return-object v0
.end method
