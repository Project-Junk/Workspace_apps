.class public Lcom/android/internal/telephony/VisualVoicemailSmsFilter;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;,
        Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;
    }
.end annotation


# static fields
.field private static final DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

.field private static final PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "VvmSmsFilter"

.field private static final TELEPHONY_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static sPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;-><init>()V

    .line 91
    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/ComponentName;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method private static buildPatternsMap(Landroid/content/Context;)V
    .locals 10

    .line 236
    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-void

    .line 239
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070063

    .line 242
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 241
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    const-string v4, ";"

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 246
    array-length v4, v5

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v7, v5, v6

    .line 247
    sget-object v8, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 248
    sget-object v8, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_1
    sget-object v8, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static filter(Landroid/content/Context;[[BLjava/lang/String;II)Z
    .locals 8

    const-string v0, "phone"

    .line 121
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 124
    invoke-virtual {v0, p4}, Landroid/telephony/TelephonyManager;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "VvmSmsFilter"

    if-nez v0, :cond_1

    .line 127
    invoke-static {p1, p2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->getFullMessage([[BLjava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p1, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->fullMessageBody:Ljava/lang/String;

    invoke-static {p0, p4, p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->messageBodyMatchesVvmPattern(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SMS matching VVM format received but the filter not been set yet"

    .line 132
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return v2

    .line 139
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    invoke-interface {v4, p4}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;->fromSubId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    if-nez v4, :cond_2

    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unable to convert subId "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to PhoneAccountHandle"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 146
    :cond_2
    invoke-static {p1, p2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->getFullMessage([[BLjava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;

    move-result-object p2

    const/4 v5, 0x0

    if-nez p2, :cond_4

    const-string p2, "Unparsable SMS received"

    .line 151
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->parseAsciiPduMessage([[B)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-static {p1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseAlternativeFormat(Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 156
    invoke-static {p0, v0, v4, p1, v5}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    :cond_3
    return v2

    .line 163
    :cond_4
    iget-object p1, p2, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->fullMessageBody:Ljava/lang/String;

    .line 164
    iget-object v6, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    .line 166
    invoke-static {v6, p1}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 168
    iget p1, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    const/4 p4, -0x2

    const/4 v7, -0x1

    if-ne p1, p4, :cond_5

    if-ne p3, v7, :cond_6

    const-string p0, "SMS matching VVM format received but is not a DATA SMS"

    .line 172
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 175
    :cond_5
    iget p1, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    if-eq p1, v7, :cond_6

    .line 177
    iget p1, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    if-eq p1, p3, :cond_6

    .line 178
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "SMS matching VVM format received but is not directed to port "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 184
    :cond_6
    iget-object p1, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p2, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    iget-object p2, v0, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    .line 185
    invoke-static {p1, p2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->isSmsFromNumbers(Landroid/telephony/SmsMessage;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p0, "SMS matching VVM format received but is not from originating numbers"

    .line 186
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 190
    :cond_7
    invoke-static {p0, v0, v4, v6, v5}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    return v1

    .line 194
    :cond_8
    invoke-static {p0, p4, p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->messageBodyMatchesVvmPattern(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "SMS matches pattern but has illegal format, still dropping as VVM SMS"

    .line 195
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {p0, v0, v4, v5, p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    return v1

    :cond_9
    return v2
.end method

.method private static getFullMessage([[BLjava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;
    .locals 9

    .line 280
    new-instance v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;-><init>(Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;)V

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 283
    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, p0, v5

    .line 284
    invoke-static {v6, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v6

    if-nez v6, :cond_0

    return-object v1

    .line 289
    :cond_0
    iget-object v7, v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    if-nez v7, :cond_1

    .line 290
    iput-object v6, v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    .line 292
    :cond_1
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 293
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v8

    if-eqz v8, :cond_2

    .line 298
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 300
    :try_start_0
    invoke-virtual {v3, v6}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    return-object v1

    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 307
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 310
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->fullMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method private static isSmsFromNumbers(Landroid/telephony/SmsMessage;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "VvmSmsFilter"

    const-string p1, "Unable to create SmsMessage from PDU, cannot determine originating number"

    .line 324
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 328
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static messageBodyMatchesVvmPattern(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2

    .line 205
    invoke-static {p0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->buildPatternsMap(Landroid/content/Context;)V

    .line 206
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p0

    .line 208
    sget-object p1, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 209
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 214
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Incoming SMS matches pattern "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "VvmSmsFilter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method private static parseAsciiPduMessage([[B)Ljava/lang/String;
    .locals 6

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 317
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V
    .locals 3

    const-string v0, "VvmSmsFilter"

    const-string v1, "VVM SMS received"

    .line 258
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.provider.action.VOICEMAIL_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    new-instance v1, Landroid/telephony/VisualVoicemailSms$Builder;

    invoke-direct {v1}, Landroid/telephony/VisualVoicemailSms$Builder;-><init>()V

    if-eqz p3, :cond_0

    .line 262
    iget-object v2, p3, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telephony/VisualVoicemailSms$Builder;->setPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;

    .line 263
    iget-object p3, p3, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->fields:Landroid/os/Bundle;

    invoke-virtual {v1, p3}, Landroid/telephony/VisualVoicemailSms$Builder;->setFields(Landroid/os/Bundle;)Landroid/telephony/VisualVoicemailSms$Builder;

    :cond_0
    if-eqz p4, :cond_1

    .line 266
    invoke-virtual {v1, p4}, Landroid/telephony/VisualVoicemailSms$Builder;->setMessageBody(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;

    .line 268
    :cond_1
    invoke-virtual {v1, p2}, Landroid/telephony/VisualVoicemailSms$Builder;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/VisualVoicemailSms$Builder;

    .line 269
    invoke-virtual {v1}, Landroid/telephony/VisualVoicemailSms$Builder;->build()Landroid/telephony/VisualVoicemailSms;

    move-result-object p2

    const-string p3, "android.provider.extra.VOICEMAIL_SMS"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 270
    iget-object p1, p1, Landroid/telephony/VisualVoicemailSmsFilterSettings;->packageName:Ljava/lang/String;

    const-string p2, "android.provider.extra.TARGET_PACAKGE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.android.phone"

    .line 271
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setPhoneAccountHandleConverterForTest(Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    .line 229
    sget-object p0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    sput-object p0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    return-void

    .line 231
    :cond_0
    sput-object p0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    return-void
.end method
