.class public Lcom/android/internal/telephony/UUSInfo;
.super Ljava/lang/Object;
.source "UUSInfo.java"


# static fields
.field public static final UUS_DCS_IA5c:I = 0x4

.field public static final UUS_DCS_OSIHLP:I = 0x1

.field public static final UUS_DCS_RMCF:I = 0x3

.field public static final UUS_DCS_USP:I = 0x0

.field public static final UUS_DCS_X244:I = 0x2

.field public static final UUS_TYPE1_IMPLICIT:I = 0x0

.field public static final UUS_TYPE1_NOT_REQUIRED:I = 0x2

.field public static final UUS_TYPE1_REQUIRED:I = 0x1

.field public static final UUS_TYPE2_NOT_REQUIRED:I = 0x4

.field public static final UUS_TYPE2_REQUIRED:I = 0x3

.field public static final UUS_TYPE3_NOT_REQUIRED:I = 0x6

.field public static final UUS_TYPE3_REQUIRED:I = 0x5


# instance fields
.field private mUusData:[B

.field private mUusDcs:I

.field private mUusType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    const/4 v0, 0x4

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    .line 75
    iput p2, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    .line 76
    iput-object p3, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-void
.end method


# virtual methods
.method public getDcs()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 81
    iget v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    return v0
.end method

.method public getType()I
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 90
    iget v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    return v0
.end method

.method public getUserData()[B
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-object v0
.end method

.method public setDcs(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    return-void
.end method

.method public setUserData([B)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-void
.end method
