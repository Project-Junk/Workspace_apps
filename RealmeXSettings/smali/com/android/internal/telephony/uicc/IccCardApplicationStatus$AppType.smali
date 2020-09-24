.class public final enum Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
.super Ljava/lang/Enum;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

.field public static final enum APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 33
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v1, 0x0

    const-string v2, "APPTYPE_UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v2, 0x1

    const-string v3, "APPTYPE_SIM"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v3, 0x2

    const-string v4, "APPTYPE_USIM"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v4, 0x3

    const-string v5, "APPTYPE_RUIM"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v5, 0x4

    const-string v6, "APPTYPE_CSIM"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v6, 0x5

    const-string v7, "APPTYPE_ISIM"

    invoke-direct {v0, v7, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    const/4 v0, 0x6

    .line 32
    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 1

    .line 32
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    return-object v0
.end method
