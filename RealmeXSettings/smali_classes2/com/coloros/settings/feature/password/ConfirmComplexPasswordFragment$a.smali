.class public final enum Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;
.super Ljava/lang/Enum;
.source "ConfirmComplexPasswordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

.field public static final enum b:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

.field public static final enum c:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

.field private static final synthetic d:[Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 91
    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    const/4 v1, 0x0

    const-string v2, "InputPassword"

    invoke-direct {v0, v2, v1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    const/4 v2, 0x1

    const-string v3, "InputPasswordWrong"

    invoke-direct {v0, v3, v2}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->b:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    new-instance v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    const/4 v3, 0x2

    const-string v4, "InputPasswordWrongQuintic"

    invoke-direct {v0, v4, v3}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->c:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    const/4 v0, 0x3

    .line 90
    new-array v0, v0, [Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    sget-object v4, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    aput-object v4, v0, v1

    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->b:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->c:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->d:[Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;
    .locals 1

    .line 90
    const-class v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    return-object p0
.end method

.method public static values()[Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;
    .locals 1

    .line 90
    sget-object v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->d:[Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    invoke-virtual {v0}, [Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$a;

    return-object v0
.end method
