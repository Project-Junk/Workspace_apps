.class public final enum Lcom/android/internal/telephony/Call$State;
.super Ljava/lang/Enum;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/Call$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Call$State;

.field public static final enum ACTIVE:Lcom/android/internal/telephony/Call$State;

.field public static final enum ALERTING:Lcom/android/internal/telephony/Call$State;

.field public static final enum DIALING:Lcom/android/internal/telephony/Call$State;

.field public static final enum DISCONNECTED:Lcom/android/internal/telephony/Call$State;

.field public static final enum DISCONNECTING:Lcom/android/internal/telephony/Call$State;

.field public static final enum HOLDING:Lcom/android/internal/telephony/Call$State;

.field public static final enum IDLE:Lcom/android/internal/telephony/Call$State;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum INCOMING:Lcom/android/internal/telephony/Call$State;

.field public static final enum WAITING:Lcom/android/internal/telephony/Call$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 36
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    .line 37
    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const/4 v2, 0x1

    const-string v3, "ACTIVE"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const/4 v3, 0x2

    const-string v4, "HOLDING"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const/4 v4, 0x3

    const-string v5, "DIALING"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const/4 v5, 0x4

    const-string v6, "ALERTING"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const/4 v6, 0x5

    const-string v7, "INCOMING"

    invoke-direct {v0, v7, v6}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const/4 v7, 0x6

    const-string v8, "WAITING"

    invoke-direct {v0, v8, v7}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const/4 v8, 0x7

    const-string v9, "DISCONNECTED"

    invoke-direct {v0, v9, v8}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    new-instance v0, Lcom/android/internal/telephony/Call$State;

    const/16 v9, 0x8

    const-string v10, "DISCONNECTING"

    invoke-direct {v0, v10, v9}, Lcom/android/internal/telephony/Call$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    const/16 v0, 0x9

    .line 35
    new-array v0, v0, [Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    aput-object v10, v0, v1

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/internal/telephony/Call$State;->$VALUES:[Lcom/android/internal/telephony/Call$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 35
    const-class v0, Lcom/android/internal/telephony/Call$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Call$State;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/internal/telephony/Call$State;->$VALUES:[Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Call$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method


# virtual methods
.method public final isAlive()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 41
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isDialing()Z
    .locals 1

    .line 50
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final isRinging()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 46
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
