.class public Lcom/android/internal/telephony/CarrierInfoManager;
.super Ljava/lang/Object;
.source "CarrierInfoManager.java"


# static fields
.field private static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierInfoManager"

.field private static final RESET_CARRIER_KEY_RATE_LIMIT:I = 0x2932e00


# instance fields
.field private mLastAccessResetCarrierKey:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierInfoManager;->mLastAccessResetCarrierKey:J

    return-void
.end method

.method public static deleteAllCarrierKeysForImsiEncryption(Landroid/content/Context;)V
    .locals 3

    const-string v0, "CarrierInfoManager"

    const-string v1, "deleting ALL carrier keys from db"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 242
    :try_start_0
    sget-object v1, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 244
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Delete failed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static deleteCarrierInfoForImsiEncryption(Landroid/content/Context;)V
    .locals 6

    const-string v0, "CarrierInfoManager"

    const-string v1, "deleting carrier key from db"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "phone"

    .line 215
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 216
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 218
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_0
    const-string v2, "mcc=? and mnc=?"

    const/4 v5, 0x2

    .line 227
    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v3

    const/4 v3, 0x1

    aput-object v1, v5, v3

    .line 228
    sget-object v1, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 230
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Delete failed"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 221
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Invalid networkOperator: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getCarrierInfoForImsiEncryption(ILandroid/content/Context;)Landroid/telephony/ImsiEncryptionInfo;
    .locals 14

    const-string v0, "phone"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 65
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CarrierInfoManager"

    if-nez v1, :cond_7

    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 67
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "using values for mnc, mcc: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string p1, "public_key"

    const-string v0, "expiration_time"

    const-string v5, "key_identifier"

    .line 79
    filled-new-array {p1, v0, v5}, [Ljava/lang/String;

    move-result-object v10

    .line 82
    sget-object v9, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "mcc=? and mnc=? and key_type=?"

    new-array v12, v1, [Ljava/lang/String;

    aput-object v6, v12, v4

    const/4 p1, 0x1

    aput-object v7, v12, p1

    .line 84
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v12, v1

    const/4 v13, 0x0

    .line 82
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 85
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-le v5, p1, :cond_1

    const-string v5, "More than 1 row found for the keyType: "

    .line 90
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 93
    new-instance v11, Ljava/util/Date;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 94
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 95
    new-instance p1, Landroid/telephony/ImsiEncryptionInfo;

    move-object v5, p1

    move v8, p0

    invoke-direct/range {v5 .. v11}, Landroid/telephony/ImsiEncryptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/util/Date;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_0
    :try_start_2
    const-string p1, "No rows found for keyType: "

    .line 86
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v2

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v0, v2

    :goto_1
    :try_start_3
    const-string p1, "Query failed:"

    .line 100
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v0, v2

    :goto_2
    const-string p1, "Bad arguments:"

    .line 98
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 103
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v2

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0

    .line 71
    :cond_7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Invalid networkOperator: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V
    .locals 2

    .line 178
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "inserting carrier key: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarrierInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CarrierInfoManager;->updateOrInsertCarrierKey(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V

    return-void
.end method

.method public static updateOrInsertCarrierKey(Landroid/telephony/ImsiEncryptionInfo;Landroid/content/Context;I)V
    .locals 12

    const-string v0, "Error updating values:"

    const-string v1, "CarrierInfoManager"

    .line 116
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    .line 121
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 122
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mcc"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mnc"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "key_type"

    .line 124
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_identifier"

    .line 126
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "public_key"

    .line 128
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 130
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "expiration_time"

    .line 129
    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v7, 0x1

    const/4 v9, 0x0

    :try_start_0
    const-string v10, "Inserting imsiEncryptionInfo into db"

    .line 133
    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v10, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v10, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result p0

    invoke-virtual {v3, p2, p0, v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierKeyEvent(IIZ)V

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 159
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error inserting/updating values:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result p0

    invoke-virtual {v3, p2, p0, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierKeyEvent(IIZ)V

    return-void

    :catch_1
    :try_start_2
    const-string v4, "Insert failed, updating imsiEncryptionInfo into db"

    .line 136
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 138
    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 140
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 139
    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :try_start_3
    sget-object v2, Landroid/provider/Telephony$CarrierColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "mcc=? and mnc=? and key_type=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMcc()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    .line 148
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getMnc()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v8, 0x2

    .line 149
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    .line 144
    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 151
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_0
    move v9, v7

    goto :goto_0

    :catch_2
    move-exception p1

    .line 155
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result p0

    invoke-virtual {v3, p2, p0, v9}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierKeyEvent(IIZ)V

    return-void

    :goto_1
    invoke-virtual {p0}, Landroid/telephony/ImsiEncryptionInfo;->getKeyType()I

    move-result p0

    invoke-virtual {v3, p2, p0, v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeCarrierKeyEvent(IIZ)V

    throw p1
.end method


# virtual methods
.method public resetCarrierKeysForImsiEncryption(Landroid/content/Context;I)V
    .locals 7

    const-string v0, "CarrierInfoManager"

    const-string v1, "resetting carrier key"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 195
    iget-wide v3, p0, Lcom/android/internal/telephony/CarrierInfoManager;->mLastAccessResetCarrierKey:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0x2932e00

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const-string p1, "resetCarrierKeysForImsiEncryption: Access rate exceeded"

    .line 196
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 199
    :cond_0
    iput-wide v1, p0, Lcom/android/internal/telephony/CarrierInfoManager;->mLastAccessResetCarrierKey:J

    .line 200
    invoke-static {p1}, Lcom/android/internal/telephony/CarrierInfoManager;->deleteCarrierInfoForImsiEncryption(Landroid/content/Context;)V

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.ACTION_CARRIER_CERTIFICATE_DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "phone"

    .line 202
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
