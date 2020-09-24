.class public Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
.super Ljava/lang/Object;
.source "NetworkInfoWithAcT.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastItem:Z

.field nAct:I

.field nPriority:I

.field operatorAlphaName:Ljava/lang/String;

.field operatorNumeric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->mLastItem:Z

    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    .line 160
    iput p3, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    .line 161
    iput p4, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessTechnology()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    return v0
.end method

.method public getOperatorAlphaName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    return v0
.end method

.method public isLastItem()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->mLastItem:Z

    return v0
.end method

.method public setAccessTechnology(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    return-void
.end method

.method public setLastItem(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->mLastItem:Z

    return-void
.end method

.method public setOperatorAlphaName(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    return-void
.end method

.method public setOperatorNumeric(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkInfoWithAcT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 188
    iget-object p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorAlphaName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nAct:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;->nPriority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
