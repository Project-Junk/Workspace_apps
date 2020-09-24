.class public final enum Lcom/android/internal/telephony/cat/AppInterface$CommandType;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/AppInterface$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum RUN_AT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

.field public static final enum SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final enum SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 73
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v1, 0x0

    const-string v2, "DISPLAY_TEXT"

    const/16 v3, 0x21

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v2, 0x1

    const-string v3, "GET_INKEY"

    const/16 v4, 0x22

    invoke-direct {v0, v3, v2, v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v3, 0x2

    const-string v4, "GET_INPUT"

    const/16 v5, 0x23

    invoke-direct {v0, v4, v3, v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v4, 0x3

    const/16 v5, 0x15

    const-string v6, "LAUNCH_BROWSER"

    invoke-direct {v0, v6, v4, v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v6, 0x4

    const-string v7, "PLAY_TONE"

    const/16 v8, 0x20

    invoke-direct {v0, v7, v6, v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v7, 0x5

    const-string v8, "REFRESH"

    invoke-direct {v0, v8, v7, v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v8, 0x6

    const-string v9, "SELECT_ITEM"

    const/16 v10, 0x24

    invoke-direct {v0, v9, v8, v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v9, 0x7

    const/16 v10, 0x11

    const-string v11, "SEND_SS"

    invoke-direct {v0, v11, v9, v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v11, 0x8

    const/16 v12, 0x12

    const-string v13, "SEND_USSD"

    invoke-direct {v0, v13, v11, v12}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v13, 0x13

    const-string v14, "SEND_SMS"

    const/16 v15, 0x9

    invoke-direct {v0, v14, v15, v13}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v14, "RUN_AT"

    const/16 v15, 0xa

    const/16 v11, 0x34

    invoke-direct {v0, v14, v15, v11}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v11, 0x14

    const-string v14, "SEND_DTMF"

    const/16 v15, 0xb

    invoke-direct {v0, v14, v15, v11}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v14, "SET_UP_EVENT_LIST"

    const/16 v15, 0xc

    invoke-direct {v0, v14, v15, v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 98
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v14, "SET_UP_IDLE_MODE_TEXT"

    const/16 v15, 0xd

    const/16 v9, 0x28

    invoke-direct {v0, v14, v15, v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 100
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v9, "SET_UP_MENU"

    const/16 v14, 0xe

    const/16 v15, 0x25

    invoke-direct {v0, v9, v14, v15}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 102
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v9, 0x10

    const-string v14, "SET_UP_CALL"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15, v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v14, "PROVIDE_LOCAL_INFORMATION"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v9, v15}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v14, "LANGUAGE_NOTIFICATION"

    const/16 v15, 0x35

    invoke-direct {v0, v14, v10, v15}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v14, "OPEN_CHANNEL"

    const/16 v15, 0x40

    invoke-direct {v0, v14, v12, v15}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v14, "CLOSE_CHANNEL"

    const/16 v15, 0x41

    invoke-direct {v0, v14, v13, v15}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 112
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v14, "RECEIVE_DATA"

    const/16 v15, 0x42

    invoke-direct {v0, v14, v11, v15}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 114
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v14, "SEND_DATA"

    const/16 v15, 0x43

    invoke-direct {v0, v14, v5, v15}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const-string v14, "GET_CHANNEL_STATUS"

    const/16 v15, 0x16

    const/16 v5, 0x44

    invoke-direct {v0, v14, v15, v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v0, 0x17

    .line 72
    new-array v0, v0, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    sget-object v5, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RUN_AT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 139
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 140
    iget v4, v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .line 72
    const-class v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .line 72
    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    return-object v0
.end method


# virtual methods
.method public final value()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->mValue:I

    return v0
.end method
