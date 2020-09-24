.class public final enum Lcom/android/internal/telephony/DriverCall$State;
.super Ljava/lang/Enum;
.source "DriverCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DriverCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/DriverCall$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DriverCall$State;

.field public static final enum ACTIVE:Lcom/android/internal/telephony/DriverCall$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum ALERTING:Lcom/android/internal/telephony/DriverCall$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum DIALING:Lcom/android/internal/telephony/DriverCall$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum HOLDING:Lcom/android/internal/telephony/DriverCall$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum INCOMING:Lcom/android/internal/telephony/DriverCall$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum WAITING:Lcom/android/internal/telephony/DriverCall$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 31
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const/4 v1, 0x0

    const-string v2, "ACTIVE"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const/4 v2, 0x1

    const-string v3, "HOLDING"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const/4 v3, 0x2

    const-string v4, "DIALING"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const/4 v4, 0x3

    const-string v5, "ALERTING"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const/4 v5, 0x4

    const-string v6, "INCOMING"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/DriverCall$State;

    const/4 v6, 0x5

    const-string v7, "WAITING"

    invoke-direct {v0, v7, v6}, Lcom/android/internal/telephony/DriverCall$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    const/4 v0, 0x6

    .line 30
    new-array v0, v0, [Lcom/android/internal/telephony/DriverCall$State;

    sget-object v7, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/DriverCall$State;->$VALUES:[Lcom/android/internal/telephony/DriverCall$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DriverCall$State;
    .locals 1

    .line 30
    const-class v0, Lcom/android/internal/telephony/DriverCall$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DriverCall$State;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DriverCall$State;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/internal/telephony/DriverCall$State;->$VALUES:[Lcom/android/internal/telephony/DriverCall$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DriverCall$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DriverCall$State;

    return-object v0
.end method
