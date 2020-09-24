.class public Lcom/coloros/systemui/common/manager/ColorOSAodManager;
.super Ljava/lang/Object;
.source "ColorOSAodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/common/manager/ColorOSAodManager$IAodNearStateChange;
    }
.end annotation


# static fields
.field private static final AOD_AREA:Ljava/lang/String; = "/sys/kernel/oppo_display/aod_area"

.field private static final TAG:Ljava/lang/String; = "ColorOSAodManager"

.field private static sColorOSAodManager:Lcom/coloros/systemui/common/manager/ColorOSAodManager;


# instance fields
.field private mAodDefaultClockArea:[Ljava/lang/String;

.field private mAodDefaultDateArea:[Ljava/lang/String;

.field private mAodDefaultFingerprintArea:[Ljava/lang/String;

.field private mAodIsShow:Z

.field private mAodNearStateChange:Lcom/coloros/systemui/common/manager/ColorOSAodManager$IAodNearStateChange;

.field private mFocusDefaultClockArea:[Ljava/lang/String;

.field private mFocusDefaultDateArea:[Ljava/lang/String;

.field private mFocusDefaultTitleArea:[Ljava/lang/String;

.field private mLastPosition:I


# direct methods
.method private constructor <init>()V
    .locals 10

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "436"

    const-string v1, "338"

    const-string v2, "300"

    const-string v3, "320"

    const-string v4, "0"

    const-string v5, "2"

    const-string v6, "0"

    const-string v7, "255"

    const-string v8, ":"

    .line 39
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultClockArea:[Ljava/lang/String;

    const-string v1, "351"

    const-string v2, "704"

    const-string v3, "400"

    const-string v4, "300"

    const-string v5, "0"

    const-string v6, "2"

    const-string v7, "0"

    const-string v8, "255"

    const-string v9, ":"

    .line 40
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultDateArea:[Ljava/lang/String;

    const-string v1, "453"

    const-string v2, "2098"

    const-string v3, "200"

    const-string v4, "180"

    const-string v5, "0"

    const-string v6, "3"

    const-string v7, "0"

    const-string v8, "255"

    .line 41
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultFingerprintArea:[Ljava/lang/String;

    const-string v1, "290"

    const-string v2, "0"

    const-string v3, "500"

    const-string v4, "50"

    const-string v5, "0"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "255"

    const-string v9, ":"

    .line 44
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultTitleArea:[Ljava/lang/String;

    const-string v1, "290"

    const-string v2, "0"

    const-string v3, "600"

    const-string v4, "500"

    const-string v5, "0"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "255"

    const-string v9, ":"

    .line 45
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultClockArea:[Ljava/lang/String;

    const-string v1, "290"

    const-string v2, "0"

    const-string v3, "500"

    const-string v4, "40"

    const-string v5, "0"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "255"

    const-string v9, ":"

    .line 46
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultDateArea:[Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/common/manager/ColorOSAodManager;
    .locals 1

    .line 49
    sget-object v0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->sColorOSAodManager:Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    invoke-direct {v0}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->sColorOSAodManager:Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    .line 52
    :cond_0
    sget-object v0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->sColorOSAodManager:Lcom/coloros/systemui/common/manager/ColorOSAodManager;

    return-object v0
.end method

.method private setAodArea(Ljava/lang/String;)V
    .locals 3

    const/4 p0, 0x0

    .line 181
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/kernel/oppo_display/aod_area"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    goto :goto_4

    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 192
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_2
    :try_start_3
    const-string v0, "ColorOSAodManager"

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAodArea exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_1

    goto :goto_1

    :catch_2
    :cond_1
    :goto_3
    return-void

    :goto_4
    if-eqz p0, :cond_2

    .line 192
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 197
    :catch_3
    :cond_2
    throw p1
.end method

.method private updateFingerLocation(Landroid/content/Context;)V
    .locals 7

    .line 165
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 166
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenHeight()I

    move-result p1

    add-int/lit8 v2, v0, -0x57

    add-int/lit8 v0, v0, 0x57

    .line 169
    sget v3, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->sIconMarginBottom:I

    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x57

    add-int/lit16 v3, p1, -0xae

    .line 172
    iget-object v4, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultFingerprintArea:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x32

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 173
    iget-object v4, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultFingerprintArea:[Ljava/lang/String;

    add-int/lit8 v5, v3, -0x28

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 174
    iget-object v4, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultFingerprintArea:[Ljava/lang/String;

    sub-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x82

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 175
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultFingerprintArea:[Ljava/lang/String;

    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x50

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p0, v0

    return-void
.end method


# virtual methods
.method public addAodNearStateChange(Lcom/coloros/systemui/common/manager/ColorOSAodManager$IAodNearStateChange;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodNearStateChange:Lcom/coloros/systemui/common/manager/ColorOSAodManager$IAodNearStateChange;

    return-void
.end method

.method public isAodIsShow()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodIsShow:Z

    return p0
.end method

.method public setAodIsShow(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodIsShow:Z

    return-void
.end method

.method public setAodNearState(I)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodNearStateChange:Lcom/coloros/systemui/common/manager/ColorOSAodManager$IAodNearStateChange;

    if-eqz p0, :cond_0

    .line 64
    invoke-interface {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSAodManager$IAodNearStateChange;->onNearStateChange(I)V

    :cond_0
    return-void
.end method

.method public updateAodArea(Landroid/content/Context;I)V
    .locals 7

    .line 90
    iput p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mLastPosition:I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAodArea: topPosition is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorOSAodManager"

    const-string v2, "Aod"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultClockArea:[Ljava/lang/String;

    add-int/lit16 p2, p2, 0xcc

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    aput-object p2, v0, v3

    .line 93
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultDateArea:[Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultClockArea:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, 0x16e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    .line 94
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->updateFingerLocation(Landroid/content/Context;)V

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultClockArea:[Ljava/lang/String;

    array-length v0, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, " "

    if-ge v4, v0, :cond_0

    aget-object v6, p2, v4

    .line 97
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 100
    :cond_0
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultDateArea:[Ljava/lang/String;

    array-length v0, p2

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_1

    aget-object v6, p2, v4

    .line 101
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 104
    :cond_1
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultFingerprintArea:[Ljava/lang/String;

    array-length v0, p2

    :goto_2
    if-ge v3, v0, :cond_2

    aget-object v4, p2, v3

    .line 105
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 108
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAodArea: value is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->setAodArea(Ljava/lang/String;)V

    return-void
.end method

.method public updateFingerPrintArea(Landroid/content/Context;)V
    .locals 1

    .line 149
    invoke-static {p1}, Lcom/coloros/systemui/aod/focusmode/FocusUtils;->isShowFocusClock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mLastPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->updateFocusAodArea(Landroid/content/Context;I)V

    goto :goto_0

    .line 152
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mLastPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->updateAodArea(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method public updateFocusAodArea(Landroid/content/Context;I)V
    .locals 7

    .line 113
    iput p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mLastPosition:I

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFocusAodArea: topPosition is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorOSAodManager"

    const-string v2, "Aod"

    invoke-static {v2, v1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getWidth(Landroid/content/Context;)I

    move-result v0

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screenWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-lez v0, :cond_0

    add-int/lit16 v0, v0, -0x1f4

    .line 118
    div-int/lit8 v0, v0, 0x2

    .line 119
    iget-object v4, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultTitleArea:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 120
    iget-object v4, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultClockArea:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 121
    iget-object v4, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultDateArea:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultTitleArea:[Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x1

    aput-object p2, v0, v4

    .line 124
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultClockArea:[Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultTitleArea:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    .line 125
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultDateArea:[Ljava/lang/String;

    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultClockArea:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, 0x21e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    .line 126
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->updateFingerLocation(Landroid/content/Context;)V

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultTitleArea:[Ljava/lang/String;

    array-length v0, p2

    move v4, v3

    :goto_0
    const-string v5, " "

    if-ge v4, v0, :cond_1

    aget-object v6, p2, v4

    .line 129
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    :cond_1
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultClockArea:[Ljava/lang/String;

    array-length v0, p2

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_2

    aget-object v6, p2, v4

    .line 133
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 136
    :cond_2
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mFocusDefaultDateArea:[Ljava/lang/String;

    array-length v0, p2

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_3

    aget-object v6, p2, v4

    .line 137
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 140
    :cond_3
    iget-object p2, p0, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->mAodDefaultFingerprintArea:[Ljava/lang/String;

    array-length v0, p2

    :goto_3
    if-ge v3, v0, :cond_4

    aget-object v4, p2, v3

    .line 141
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 144
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFocusAodArea: value is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/manager/ColorOSAodManager;->setAodArea(Ljava/lang/String;)V

    return-void
.end method
