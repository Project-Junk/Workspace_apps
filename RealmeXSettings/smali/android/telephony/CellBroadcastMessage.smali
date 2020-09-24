.class public Landroid/telephony/CellBroadcastMessage;
.super Ljava/lang/Object;
.source "CellBroadcastMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellBroadcastMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final SMS_CB_MESSAGE_EXTRA:Ljava/lang/String; = "com.android.cellbroadcastreceiver.SMS_CB_MESSAGE"


# instance fields
.field private final mDeliveryTime:J

.field private mIsRead:Z

.field private final mSmsCbMessage:Landroid/telephony/SmsCbMessage;

.field private mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Landroid/telephony/CellBroadcastMessage$1;

    invoke-direct {v0}, Landroid/telephony/CellBroadcastMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/CellBroadcastMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 92
    new-instance v1, Landroid/telephony/SmsCbMessage;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbMessage;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellBroadcastMessage$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SmsCbMessage;)V
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 80
    iput-object p1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    .line 82
    iput-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    return-void
.end method

.method private constructor <init>(Landroid/telephony/SmsCbMessage;JZ)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    .line 86
    iput-object p1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 87
    iput-wide p2, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    .line 88
    iput-boolean p4, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    return-void
.end method

.method public static createFromCursor(Landroid/database/Cursor;)Landroid/telephony/CellBroadcastMessage;
    .locals 21
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "geo_scope"

    .line 134
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 133
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v1, "serial_number"

    .line 136
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 135
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v1, "service_category"

    .line 138
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 137
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v1, "language"

    .line 140
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 139
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "body"

    .line 142
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 141
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v1, "format"

    .line 144
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 143
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v1, "priority"

    .line 146
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 145
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v1, "plmn"

    .line 149
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    .line 150
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_0

    .line 151
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v11, "lac"

    .line 157
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    if-eq v11, v6, :cond_1

    .line 158
    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 159
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    goto :goto_1

    :cond_1
    move v11, v6

    :goto_1
    const-string v12, "cid"

    .line 165
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    if-eq v12, v6, :cond_2

    .line 166
    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 167
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    goto :goto_2

    :cond_2
    move v12, v6

    .line 172
    :goto_2
    new-instance v13, Landroid/telephony/SmsCbLocation;

    invoke-direct {v13, v1, v11, v12}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    const-string v1, "etws_warning_type"

    .line 175
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 177
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 178
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 179
    new-instance v1, Landroid/telephony/SmsCbEtwsInfo;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v1

    invoke-direct/range {v14 .. v19}, Landroid/telephony/SmsCbEtwsInfo;-><init>(IZZZ[B)V

    move-object v11, v1

    goto :goto_3

    :cond_3
    move-object v11, v2

    :goto_3
    const-string v1, "cmas_message_class"

    .line 185
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_9

    .line 187
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_9

    .line 188
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v1, "cmas_category"

    .line 191
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_4

    .line 193
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 194
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v16, v1

    goto :goto_4

    :cond_4
    move/from16 v16, v6

    :goto_4
    const-string v1, "cmas_response_type"

    .line 200
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 202
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 203
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v17, v1

    goto :goto_5

    :cond_5
    move/from16 v17, v6

    :goto_5
    const-string v1, "cmas_severity"

    .line 209
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 211
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 212
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v18, v1

    goto :goto_6

    :cond_6
    move/from16 v18, v6

    :goto_6
    const-string v1, "cmas_urgency"

    .line 218
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_7

    .line 220
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 221
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move/from16 v19, v1

    goto :goto_7

    :cond_7
    move/from16 v19, v6

    :goto_7
    const-string v1, "cmas_certainty"

    .line 227
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_8

    .line 229
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 230
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :cond_8
    move/from16 v20, v6

    .line 235
    new-instance v1, Landroid/telephony/SmsCbCmasInfo;

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    move-object v12, v1

    goto :goto_8

    :cond_9
    move-object v12, v2

    .line 241
    :goto_8
    new-instance v1, Landroid/telephony/SmsCbMessage;

    move-object v2, v1

    move-object v6, v13

    invoke-direct/range {v2 .. v12}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    const-string v2, "date"

    .line 244
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "read"

    .line 246
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    .line 249
    :goto_9
    new-instance v4, Landroid/telephony/CellBroadcastMessage;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/telephony/SmsCbMessage;JZ)V

    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCmasMessageClass()I
    .locals 1

    .line 393
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    .line 337
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 258
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 259
    iget-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    .line 260
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getGeographicalScope()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "geo_scope"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 263
    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v3

    const-string v4, "plmn"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 266
    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getLac()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "lac"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 269
    invoke-virtual {v2}, Landroid/telephony/SmsCbLocation;->getCid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cid"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "serial_number"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "service_category"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    const-string v3, "body"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-wide v2, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    iget-boolean v2, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "read"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 277
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "format"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getMessagePriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    iget-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {v1}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "etws_warning_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    :cond_3
    iget-object v1, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsCbMessage;->getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 287
    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getMessageClass()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cmas_message_class"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getCategory()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cmas_category"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getResponseType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cmas_response_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getSeverity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cmas_severity"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getUrgency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cmas_urgency"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getCertainty()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cmas_certainty"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    return-object v0
.end method

.method public getDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 439
    iget-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    const v2, 0x80b11

    invoke-static {p1, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDeliveryTime()J
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 318
    iget-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    return-wide v0
.end method

.method public getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 308
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 323
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 333
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v0

    return v0
.end method

.method public getServiceCategory()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 313
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v0

    return v0
.end method

.method public getSpokenDateString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 450
    iget-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    const/16 v2, 0x11

    invoke-static {p1, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSubId()I
    .locals 1

    .line 75
    iget v0, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    return v0
.end method

.method public isCmasMessage()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 384
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isCmasMessage()Z

    move-result v0

    return v0
.end method

.method public isEmergencyAlertMessage()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    return v0
.end method

.method public isEtwsEmergencyUserAlert()Z
    .locals 1

    .line 416
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->isEmergencyUserAlert()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEtwsMessage()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 375
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEtwsMessage()Z

    move-result v0

    return v0
.end method

.method public isEtwsPopupAlert()Z
    .locals 1

    .line 406
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->isPopupAlert()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEtwsTestMessage()Z
    .locals 2

    .line 425
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Landroid/telephony/SmsCbEtwsInfo;->getWarningType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPublicAlertMessage()Z
    .locals 1

    .line 355
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0}, Landroid/telephony/SmsCbMessage;->isEmergencyMessage()Z

    move-result v0

    return v0
.end method

.method public isRead()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 328
    iget-boolean v0, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    return v0
.end method

.method public setIsRead(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    return-void
.end method

.method public setSubId(I)V
    .locals 0

    .line 66
    iput p1, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 106
    iget-object v0, p0, Landroid/telephony/CellBroadcastMessage;->mSmsCbMessage:Landroid/telephony/SmsCbMessage;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbMessage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 107
    iget-wide v0, p0, Landroid/telephony/CellBroadcastMessage;->mDeliveryTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-boolean p2, p0, Landroid/telephony/CellBroadcastMessage;->mIsRead:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget p2, p0, Landroid/telephony/CellBroadcastMessage;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
