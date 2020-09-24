.class public final enum Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
.super Ljava/lang/Enum;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneInternalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataActivityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

.field public static final enum NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const/4 v2, 0x1

    const-string v3, "DATAIN"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const/4 v3, 0x2

    const-string v4, "DATAOUT"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const/4 v4, 0x3

    const-string v5, "DATAINANDOUT"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    new-instance v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const/4 v5, 0x4

    const-string v6, "DORMANT"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    const/4 v0, 0x5

    .line 47
    new-array v0, v0, [Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    sget-object v6, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->NONE:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAIN:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->DORMANT:Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->$VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1

    .line 47
    const-class v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;
    .locals 1

    .line 47
    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->$VALUES:[Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/PhoneInternalInterface$DataActivityState;

    return-object v0
.end method
