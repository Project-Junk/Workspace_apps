.class abstract Lcom/android/internal/telephony/cat/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 283
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p0

    if-eqz p0, :cond_0

    .line 287
    :try_start_0
    invoke-static {v1, v2, p0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 290
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    .line 293
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Alpha Id length="

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ValueParser"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 303
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x11100c5

    .line 305
    :try_start_1
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    const-string p0, "Default Message"

    return-object p0
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isComprehensionRequired()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 48
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    add-int/lit8 p0, v2, 0x1

    .line 49
    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    add-int/lit8 v2, v2, 0x2

    .line 50
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 53
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DeviceIdentities;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/android/internal/telephony/cat/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DeviceIdentities;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result p0

    .line 72
    :try_start_0
    aget-byte v2, v1, p0

    and-int/lit16 v2, v2, 0xff

    iput v2, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->sourceId:I

    add-int/lit8 p0, p0, 0x1

    .line 73
    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 76
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result p0

    .line 96
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v1

    aget-byte v2, v0, p0

    and-int/lit16 v2, v2, 0xff

    aget-object v1, v1, v2

    add-int/lit8 p0, p0, 0x1

    .line 97
    aget-byte p0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    .line 101
    new-instance v0, Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/cat/Duration;-><init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V

    return-object v0

    .line 99
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/android/internal/telephony/cat/IconId;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/IconId;-><init>()V

    .line 166
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result p0

    add-int/lit8 v2, p0, 0x1

    .line 169
    :try_start_0
    aget-byte p0, v1, p0

    and-int/lit16 p0, p0, 0xff

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput-boolean p0, v0, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    .line 170
    aget-byte p0, v1, v2

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 172
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 116
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 122
    :try_start_0
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, 0x1

    .line 123
    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object p0

    .line 125
    new-instance v0, Lcom/android/internal/telephony/cat/Item;

    invoke-direct {v0, v2, p0}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result p0

    .line 148
    :try_start_0
    aget-byte p0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 150
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    const-string v0, "ValueParser"

    const-string v1, "retrieveItemsIconId:"

    .line 188
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/android/internal/telephony/cat/ItemsIconId;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p0

    const/4 v3, 0x1

    sub-int/2addr p0, v3

    .line 194
    new-array v4, p0, [I

    iput-object v4, v0, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    add-int/lit8 v4, v2, 0x1

    .line 198
    :try_start_0
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v5, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    :goto_1
    if-ge v5, p0, :cond_1

    .line 201
    iget-object v2, v0, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v1, v4

    aput v4, v2, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v3

    move v4, v6

    goto :goto_1

    :cond_1
    return-object v0

    .line 204
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/util/List;
    .locals 17
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    if-eqz v3, :cond_6

    .line 228
    div-int/lit8 v3, v3, 0x4

    move v5, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    .line 232
    :try_start_0
    aget-byte v6, v1, v5

    and-int/lit16 v8, v6, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 233
    aget-byte v6, v1, v6

    and-int/lit16 v9, v6, 0xff

    add-int/lit8 v6, v5, 0x2

    .line 234
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v5, 0x3

    .line 235
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v10, v6, 0x3

    .line 238
    invoke-static {v10}, Lcom/android/internal/telephony/cat/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v10

    shr-int/lit8 v11, v6, 0x2

    and-int/lit8 v11, v11, 0x3

    .line 241
    invoke-static {v11}, Lcom/android/internal/telephony/cat/FontSize;->fromInt(I)Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v11

    if-nez v11, :cond_0

    .line 244
    sget-object v11, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    :cond_0
    and-int/lit8 v12, v6, 0x10

    const/4 v13, 0x1

    if-eqz v12, :cond_1

    move v12, v13

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    and-int/lit8 v14, v6, 0x20

    if-eqz v14, :cond_2

    move v14, v13

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    and-int/lit8 v15, v6, 0x40

    if-eqz v15, :cond_3

    move v15, v13

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_4

    move v6, v13

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    .line 252
    :goto_4
    invoke-static {v7}, Lcom/android/internal/telephony/cat/TextColor;->fromInt(I)Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v16

    .line 254
    new-instance v13, Lcom/android/internal/telephony/cat/TextAttribute;

    move-object v7, v13

    move-object v4, v13

    move v13, v14

    move v14, v15

    move v15, v6

    invoke-direct/range {v7 .. v16}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V

    .line 257
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 263
    :catch_0
    new-instance v0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v0

    :cond_5
    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v1

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 339
    :try_start_0
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0xc

    int-to-byte v2, v2

    const/16 v3, 0x8

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr p0, v3

    .line 342
    div-int/lit8 p0, p0, 0x7

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 345
    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_3

    .line 348
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const-string v3, "UTF-16"

    invoke-direct {v2, v0, v1, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object p0, v2

    :goto_0
    return-object p0

    .line 350
    :cond_3
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0

    .line 355
    :catch_1
    new-instance p0, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw p0
.end method
