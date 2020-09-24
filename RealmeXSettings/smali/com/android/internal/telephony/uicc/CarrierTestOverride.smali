.class public Lcom/android/internal/telephony/uicc/CarrierTestOverride;
.super Ljava/lang/Object;
.source "CarrierTestOverride.java"


# static fields
.field static final CARRIER_TEST_XML_HEADER:Ljava/lang/String; = "carrierTestOverrides"

.field static final CARRIER_TEST_XML_ITEM_KEY:Ljava/lang/String; = "key"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_GID1:Ljava/lang/String; = "gid1"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_GID2:Ljava/lang/String; = "gid2"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_ICCID:Ljava/lang/String; = "iccid"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_IMSI:Ljava/lang/String; = "imsi"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_ISINTESTMODE:Ljava/lang/String; = "isInTestMode"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_MCCMNC:Ljava/lang/String; = "mccmnc"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_PNN:Ljava/lang/String; = "pnn"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_SPN:Ljava/lang/String; = "spn"

.field static final CARRIER_TEST_XML_ITEM_VALUE:Ljava/lang/String; = "value"

.field static final CARRIER_TEST_XML_SUBHEADER:Ljava/lang/String; = "carrierTestOverride"

.field static final DATA_CARRIER_TEST_OVERRIDE_PATH:Ljava/lang/String; = "/user_de/0/com.android.phone/files/carrier_test_conf.xml"

.field static final LOG_TAG:Ljava/lang/String; = "CarrierTestOverride"


# instance fields
.field private mCarrierTestParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->loadCarrierTestOverrides()V

    return-void
.end method

.method private loadCarrierTestOverrides()V
    .locals 8

    const-string v0, "Exception in carrier_test_conf parser "

    const-string v1, "CarrierTestOverride"

    .line 176
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "/user_de/0/com.android.phone/files/carrier_test_conf.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CarrierTestConfig file Modified Timestamp: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 189
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 190
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v4, "carrierTestOverrides"

    .line 192
    invoke-static {v2, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 195
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 197
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "carrierTestOverride"

    .line 198
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "key"

    const/4 v5, 0x0

    .line 202
    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "value"

    .line 203
    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "extracting key-values from CarrierTestConfig file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 213
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v2

    .line 211
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Can not open "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method getFakeGid1()Ljava/lang/String;
    .locals 4

    const-string v0, "CarrierTestOverride"

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v2, "gid1"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reading gid1 from CarrierTestConfig file: "

    .line 108
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "No gid1 in CarrierTestConfig file "

    .line 111
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method getFakeGid2()Ljava/lang/String;
    .locals 4

    const-string v0, "CarrierTestOverride"

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v2, "gid2"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reading gid2 from CarrierTestConfig file: "

    .line 119
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "No gid2 in CarrierTestConfig file "

    .line 122
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method getFakeIMSI()Ljava/lang/String;
    .locals 4

    const-string v0, "CarrierTestOverride"

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v2, "imsi"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reading imsi from CarrierTestConfig file: "

    .line 97
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "No imsi in CarrierTestConfig file "

    .line 100
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method getFakeIccid()Ljava/lang/String;
    .locals 4

    const-string v0, "CarrierTestOverride"

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v2, "iccid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reading iccid from CarrierTestConfig file: "

    .line 141
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "No iccid in CarrierTestConfig file "

    .line 144
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method getFakeMccMnc()Ljava/lang/String;
    .locals 4

    const-string v0, "CarrierTestOverride"

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v2, "mccmnc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reading mccmnc from CarrierTestConfig file: "

    .line 152
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "No mccmnc in CarrierTestConfig file "

    .line 155
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method getFakePnnHomeName()Ljava/lang/String;
    .locals 4

    const-string v0, "CarrierTestOverride"

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v2, "pnn"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reading pnn from CarrierTestConfig file: "

    .line 130
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "No pnn in CarrierTestConfig file "

    .line 133
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method getFakeSpn()Ljava/lang/String;
    .locals 4

    const-string v0, "CarrierTestOverride"

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v2, "spn"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "reading spn from CarrierTestConfig file: "

    .line 86
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string v1, "No spn in CarrierTestConfig file "

    .line 89
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method isInTestMode()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "isInTestMode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "true"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method override(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "isInTestMode"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "mccmnc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v0, "imsi"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string p2, "iccid"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string p2, "gid1"

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string p2, "gid2"

    invoke-virtual {p1, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string p2, "pnn"

    invoke-virtual {p1, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string p2, "spn"

    invoke-virtual {p1, p2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
