.class public Lcom/android/internal/telephony/uicc/PlmnActRecord;
.super Ljava/lang/Object;
.source "PlmnActRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/PlmnActRecord$AccessTech;
    }
.end annotation


# static fields
.field public static final ACCESS_TECH_CDMA2000_1XRTT:I = 0x10

.field public static final ACCESS_TECH_CDMA2000_HRPD:I = 0x20

.field public static final ACCESS_TECH_EUTRAN:I = 0x4000

.field public static final ACCESS_TECH_GSM:I = 0x80

.field public static final ACCESS_TECH_GSM_COMPACT:I = 0x40

.field public static final ACCESS_TECH_RESERVED:I = 0x3f0f

.field public static final ACCESS_TECH_UTRAN:I = 0x8000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/uicc/PlmnActRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENCODED_LENGTH:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "PlmnActRecord"

.field private static final VDBG:Z = false


# instance fields
.field public final accessTechs:I

.field public final plmn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lcom/android/internal/telephony/uicc/PlmnActRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/PlmnActRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    add-int/lit8 v0, p2, 0x3

    .line 71
    aget-byte v0, p1, v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x4

    aget-byte p1, p1, p2

    .line 72
    invoke-static {p1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    return-void
.end method

.method private accessTechString()Ljava/lang/String;
    .locals 5

    .line 87
    iget v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    if-nez v0, :cond_0

    const-string v0, "NONE"

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const-string v1, "UTRAN|"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_2

    const-string v1, "EUTRAN|"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    const-string v1, "GSM|"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    const-string v1, "GSM_COMPACT|"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    const-string v1, "CDMA2000_HRPD|"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    const-string v1, "CDMA2000_1XRTT|"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v2, v1, 0x3f0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 111
    new-array v2, v3, [Ljava/lang/Object;

    and-int/lit16 v1, v1, 0x3f0f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "UNKNOWN:%x|"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;
    .locals 5

    if-eqz p0, :cond_2

    .line 126
    array-length v0, p0

    if-eqz v0, :cond_2

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x5

    .line 135
    new-array v1, v0, [Lcom/android/internal/telephony/uicc/PlmnActRecord;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 138
    new-instance v3, Lcom/android/internal/telephony/uicc/PlmnActRecord;

    mul-int/lit8 v4, v2, 0x5

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/PlmnActRecord;-><init>([BI)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 128
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed PlmnActRecord, bytes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    .line 129
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    move-object p0, v1

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlmnActRecord"

    .line 128
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 175
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/PlmnActRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 177
    :cond_0
    check-cast p1, Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    iget p1, p1, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getBytes()[B
    .locals 4

    const/4 v0, 0x5

    .line 79
    new-array v0, v0, [B

    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToBcdPlmn(Ljava/lang/String;[BI)V

    .line 81
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 170
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 119
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "{PLMN=%s,AccessTechs=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 151
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget p2, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
