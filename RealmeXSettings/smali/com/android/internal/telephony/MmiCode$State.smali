.class public final enum Lcom/android/internal/telephony/MmiCode$State;
.super Ljava/lang/Enum;
.source "MmiCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MmiCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/MmiCode$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/MmiCode$State;

.field public static final enum CANCELLED:Lcom/android/internal/telephony/MmiCode$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum COMPLETE:Lcom/android/internal/telephony/MmiCode$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum FAILED:Lcom/android/internal/telephony/MmiCode$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum PENDING:Lcom/android/internal/telephony/MmiCode$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    const/4 v2, 0x1

    const-string v3, "CANCELLED"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    const/4 v3, 0x2

    const-string v4, "COMPLETE"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/MmiCode$State;

    const/4 v4, 0x3

    const-string v5, "FAILED"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/MmiCode$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [Lcom/android/internal/telephony/MmiCode$State;

    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/MmiCode$State;->$VALUES:[Lcom/android/internal/telephony/MmiCode$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .line 32
    const-class v0, Lcom/android/internal/telephony/MmiCode$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/MmiCode$State;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->$VALUES:[Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/MmiCode$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method
