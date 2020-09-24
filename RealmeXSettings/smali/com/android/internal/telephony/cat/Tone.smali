.class public final enum Lcom/android/internal/telephony/cat/Tone;
.super Ljava/lang/Enum;
.source "Tone.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/cat/Tone;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/Tone;

.field public static final enum BUSY:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum CONGESTION:Lcom/android/internal/telephony/cat/Tone;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/Tone;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum DIAL:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum HAPPY:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_1:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_2:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_3:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_4:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_5:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_6:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_7:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MELODY_8:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum QUESTION:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum RINGING:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum SAD:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum URGENT:Lcom/android/internal/telephony/cat/Tone;

.field public static final enum VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 34
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "DIAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->DIAL:Lcom/android/internal/telephony/cat/Tone;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/4 v3, 0x2

    const-string v4, "BUSY"

    invoke-direct {v0, v4, v2, v3}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->BUSY:Lcom/android/internal/telephony/cat/Tone;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/4 v4, 0x3

    const-string v5, "CONGESTION"

    invoke-direct {v0, v5, v3, v4}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CONGESTION:Lcom/android/internal/telephony/cat/Tone;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/4 v5, 0x4

    const-string v6, "RADIO_PATH_ACK"

    invoke-direct {v0, v6, v4, v5}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/4 v6, 0x5

    const-string v7, "RADIO_PATH_NOT_AVAILABLE"

    invoke-direct {v0, v7, v5, v6}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/4 v7, 0x6

    const-string v8, "ERROR_SPECIAL_INFO"

    invoke-direct {v0, v8, v6, v7}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/4 v8, 0x7

    const-string v9, "CALL_WAITING"

    invoke-direct {v0, v9, v7, v8}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v9, 0x8

    const-string v10, "RINGING"

    invoke-direct {v0, v10, v8, v9}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->RINGING:Lcom/android/internal/telephony/cat/Tone;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v10, 0x10

    const-string v11, "GENERAL_BEEP"

    invoke-direct {v0, v11, v9, v10}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v11, 0x11

    const-string v12, "POSITIVE_ACK"

    const/16 v13, 0x9

    invoke-direct {v0, v12, v13, v11}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v12, 0x12

    const-string v13, "NEGATIVE_ACK"

    const/16 v14, 0xa

    invoke-direct {v0, v13, v14, v12}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v13, 0x13

    const-string v14, "INCOMING_SPEECH_CALL"

    const/16 v15, 0xb

    invoke-direct {v0, v14, v15, v13}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v14, 0x14

    const-string v15, "INCOMING_SMS"

    const/16 v9, 0xc

    invoke-direct {v0, v15, v9, v14}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

    .line 104
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const/16 v9, 0x15

    const-string v15, "CRITICAL_ALERT"

    const/16 v8, 0xd

    invoke-direct {v0, v15, v8, v9}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

    .line 109
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v8, "VIBRATE_ONLY"

    const/16 v15, 0xe

    const/16 v7, 0x20

    invoke-direct {v0, v8, v15, v7}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "HAPPY"

    const/16 v8, 0xf

    const/16 v15, 0x30

    invoke-direct {v0, v7, v8, v15}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->HAPPY:Lcom/android/internal/telephony/cat/Tone;

    .line 121
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "SAD"

    const/16 v8, 0x31

    invoke-direct {v0, v7, v10, v8}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->SAD:Lcom/android/internal/telephony/cat/Tone;

    .line 126
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "URGENT"

    const/16 v8, 0x32

    invoke-direct {v0, v7, v11, v8}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->URGENT:Lcom/android/internal/telephony/cat/Tone;

    .line 131
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "QUESTION"

    const/16 v8, 0x33

    invoke-direct {v0, v7, v12, v8}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->QUESTION:Lcom/android/internal/telephony/cat/Tone;

    .line 136
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "MESSAGE_RECEIVED"

    const/16 v8, 0x34

    invoke-direct {v0, v7, v13, v8}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

    .line 139
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "MELODY_1"

    const/16 v8, 0x40

    invoke-direct {v0, v7, v14, v8}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_1:Lcom/android/internal/telephony/cat/Tone;

    .line 140
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "MELODY_2"

    const/16 v8, 0x41

    invoke-direct {v0, v7, v9, v8}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_2:Lcom/android/internal/telephony/cat/Tone;

    .line 141
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "MELODY_3"

    const/16 v8, 0x16

    const/16 v15, 0x42

    invoke-direct {v0, v7, v8, v15}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_3:Lcom/android/internal/telephony/cat/Tone;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "MELODY_4"

    const/16 v8, 0x17

    const/16 v15, 0x43

    invoke-direct {v0, v7, v8, v15}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_4:Lcom/android/internal/telephony/cat/Tone;

    .line 143
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "MELODY_5"

    const/16 v8, 0x18

    const/16 v15, 0x44

    invoke-direct {v0, v7, v8, v15}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_5:Lcom/android/internal/telephony/cat/Tone;

    .line 144
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "MELODY_6"

    const/16 v8, 0x19

    const/16 v15, 0x45

    invoke-direct {v0, v7, v8, v15}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_6:Lcom/android/internal/telephony/cat/Tone;

    .line 145
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "MELODY_7"

    const/16 v8, 0x1a

    const/16 v15, 0x46

    invoke-direct {v0, v7, v8, v15}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_7:Lcom/android/internal/telephony/cat/Tone;

    .line 146
    new-instance v0, Lcom/android/internal/telephony/cat/Tone;

    const-string v7, "MELODY_8"

    const/16 v8, 0x1b

    const/16 v15, 0x47

    invoke-direct {v0, v7, v8, v15}, Lcom/android/internal/telephony/cat/Tone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->MELODY_8:Lcom/android/internal/telephony/cat/Tone;

    const/16 v0, 0x1c

    .line 28
    new-array v0, v0, [Lcom/android/internal/telephony/cat/Tone;

    sget-object v7, Lcom/android/internal/telephony/cat/Tone;->DIAL:Lcom/android/internal/telephony/cat/Tone;

    aput-object v7, v0, v1

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->BUSY:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CONGESTION:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_ACK:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RADIO_PATH_NOT_AVAILABLE:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->ERROR_SPECIAL_INFO:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CALL_WAITING:Lcom/android/internal/telephony/cat/Tone;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->RINGING:Lcom/android/internal/telephony/cat/Tone;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->GENERAL_BEEP:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->POSITIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->NEGATIVE_ACK:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SPEECH_CALL:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->INCOMING_SMS:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->CRITICAL_ALERT:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->VIBRATE_ONLY:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->HAPPY:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->SAD:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->URGENT:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->QUESTION:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MESSAGE_RECEIVED:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_1:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_2:Lcom/android/internal/telephony/cat/Tone;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_3:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_4:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_5:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_6:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_7:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/Tone;->MELODY_8:Lcom/android/internal/telephony/cat/Tone;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->$VALUES:[Lcom/android/internal/telephony/cat/Tone;

    .line 183
    new-instance v0, Lcom/android/internal/telephony/cat/Tone$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/Tone$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/Tone;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 151
    iput p3, p0, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/Tone;
    .locals 5

    .line 161
    invoke-static {}, Lcom/android/internal/telephony/cat/Tone;->values()[Lcom/android/internal/telephony/cat/Tone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 162
    iget v4, v3, Lcom/android/internal/telephony/cat/Tone;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/Tone;
    .locals 1

    .line 28
    const-class v0, Lcom/android/internal/telephony/cat/Tone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cat/Tone;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/Tone;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/internal/telephony/cat/Tone;->$VALUES:[Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/Tone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/Tone;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/Tone;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
