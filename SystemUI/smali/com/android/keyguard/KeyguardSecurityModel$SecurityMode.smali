.class public final enum Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
.super Ljava/lang/Enum;
.source "KeyguardSecurityModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum LockDead:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Numeric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum PINSix:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 35
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v1, 0x0

    const-string v2, "Invalid"

    invoke-direct {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 36
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x1

    const-string v3, "None"

    invoke-direct {v0, v3, v2}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 37
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v3, 0x2

    const-string v4, "Pattern"

    invoke-direct {v0, v4, v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 38
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v4, 0x3

    const-string v5, "Password"

    invoke-direct {v0, v5, v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 39
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v5, 0x4

    const-string v6, "PIN"

    invoke-direct {v0, v6, v5}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 40
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v6, 0x5

    const-string v7, "SimPin"

    invoke-direct {v0, v7, v6}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 41
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v7, 0x6

    const-string v8, "SimPuk"

    invoke-direct {v0, v8, v7}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 44
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v8, 0x7

    const-string v9, "PINSix"

    invoke-direct {v0, v9, v8}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PINSix:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 45
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v9, 0x8

    const-string v10, "Numeric"

    invoke-direct {v0, v10, v9}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Numeric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 49
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v10, 0x9

    const-string v11, "LockDead"

    invoke-direct {v0, v11, v10}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->LockDead:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v0, 0xa

    .line 34
    new-array v0, v0, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v11, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v11, v0, v1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PINSix:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Numeric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->LockDead:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .line 34
    const-class v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method
